#!/usr/bin/env python
#import queue
#from turtle import distance
import rospy
from freenove_base.srv import ultrasonic_srv
from freenove_base.msg import motor_msg,line_tracking_msg,open_cv_control_msg

class Line_Tracking:
    def __init__(self,TOPIC):
#        print("0")
        # Init ROS
        self.TOPIC = TOPIC
        #service
        rospy.wait_for_service(self.TOPIC["ultrasonic_topic"])
#        print("1")
        
        # Publisher
        self.motor_pub = rospy.Publisher(self.TOPIC["motor_topic"], motor_msg, queue_size=3)
        # Subscriber
        self.line_tracking_sub = rospy.Subscriber(self.TOPIC["line_tracking_topic"],line_tracking_msg,
                            self.line_tracking_callback, queue_size=3)
        self.opencvinrossample_sub = rospy.Subscriber(self.TOPIC['opencvinrossample_topic'],open_cv_control_msg,
                            self.open_cv_control_msg_callback, queue_size=3)
        self.opencvinrossample_pub = rospy.Publisher(self.TOPIC['opencvinrossample_topic'],open_cv_control_msg, queue_size=3)
#        print("2")
        self.distance=200
        self.switch = 0
        self.LMR=0x00

    def get_distance(self):
        print("dis")
        # Push out request
        call = rospy.ServiceProxy(self.TOPIC["ultrasonic_topic"],ultrasonic_srv)               
        rusult=call(bool(1))
        # Pull disntace result
        return rusult.distance 


    def open_cv_control_msg_callback(self,msg):
            self.switch= msg.switch


    def line_tracking_callback(self,msg): 
        
        self.LMR=0x00
        # Get left,mid,right sensors statement
        if msg.left==True:
            self.LMR=(self.LMR | 4)
        if msg.mid==True:
            self.LMR=(self.LMR | 2)
        if msg.right==True:
            self.LMR=(self.LMR | 1)
    def line_tracking_update(self):
        print("i am here")
        self.distance = self.get_distance()
        print(self.distance)
        if self.switch == 0:
            if self.distance>0:
                flag=1
                            # Motors' speed and direction judgment
                if self.LMR==2:
                    wheels_pose =[700,700,700,700]
                elif self.LMR==4:
                    wheels_pose =[-900,-900,1100,1100]
                elif self.LMR==6:
                    wheels_pose =[-1000,-1000,2000,2000]
                elif self.LMR==1:
                    wheels_pose =[1100,1100,-900,-900]
                elif self.LMR==3:
                    wheels_pose =[2000,2000,-1000,-1000]            
                elif self.LMR==7: 
                    wheels_pose =[0,0,0,0]
                else:
                    flag=0 



                # Publish only if judgment is changed           
                if flag:
                    self.update(wheels_pose)

            else: 
                self.update([-500,-500,-500,-500])
                rospy.sleep(0.5)
                self.update([0,0,0,0])
                change = open_cv_control_msg()
                change.switch = 1
                self.opencvinrossample_pub.publish(change)


            #update motor to turn around sleep? then after 2change switch
        
    def update(self,wheels_pose):
        move = motor_msg()
        move.left_Upper_Wheel = wheels_pose[0]
        move.left_Lower_Wheel = wheels_pose[1]
        move.right_Upper_Wheel = wheels_pose[2]
        move.right_Lower_Wheel=wheels_pose[3]
        self.motor_pub.publish(move)
        

if __name__ == '__main__':
    rospy.init_node('Line_Tracking', anonymous=True)
    TOPIC ={}
    TOPIC["motor_topic"] = rospy.get_param("~motor_topic",'/car/hardware/motor')
    TOPIC["servo_topic"] = rospy.get_param("~servo_topic",'/car/hardware/servo')
    TOPIC["buzzer_topic"] = rospy.get_param("~buzzer_topic",'/car/hardware/buzzer')
    TOPIC["line_tracking_topic"] = rospy.get_param("~line_tracking_topic",'/car/hardware/line_tracking')
    TOPIC["adc_topic"] = rospy.get_param("~adc_topic",'/car/hardware/adc')
    TOPIC["ultrasonic_topic"] = rospy.get_param("~ultrasonic_topic",'/car/hardware/ultrasonic')
    TOPIC['opencvinrossample_topic'] = rospy.get_param("~opencvinrossample_topic",'/car/hardware/OpenCVinROS-Sample')

        #service
    follow = Line_Tracking(TOPIC)    
    while not rospy.is_shutdown():
        # This will be invoked before actual shutdown occurs
        # prevent motor keep running
        follow.line_tracking_update()
    print("exit")
