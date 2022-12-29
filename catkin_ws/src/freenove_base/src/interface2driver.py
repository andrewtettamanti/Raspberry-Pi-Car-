#!/usr/bin/env python
import queue

# import ROS dependences 
# import custom msg and srv 
import rospy
from freenove_base.msg import motor_msg, line_tracking_msg, \
                                servo_msg,adc_msg,buzzer_msg,led_msg
from freenove_base.srv import ultrasonic_srv
from driver4hardware import *

# All hardware drivers will call in this interface class
class interface2driver:
    def __init__(self,TOPIC):
        # For passing command or data, it is necessary to initialize topic in the node
        #======================
        # Subscriber 
        # Each subscriber, it needs a callback function to execute command or data
        #======================
        # initialize Motor topic 
        self.motor = Motor()
        self.motor.setMotorModel(0,0,0,0)
        self.motor_sub = rospy.Subscriber(TOPIC["motor_topic"],motor_msg,
                            self.motor_callback, queue_size=3)        
        # initialize Servo topic 
        self.servo = Servo()
        self.servo_sub =  rospy.Subscriber(TOPIC["servo_topic"],servo_msg,
                            self.servo_callback, queue_size=3)

        # initialize Buzzer topic 
        self.buzzer = Buzzer()
        self.buzzer_sub =  rospy.Subscriber(TOPIC["buzzer_topic"],buzzer_msg,
                            self.buzzer_callback, queue_size=3)        
        
        
        #======================
        # Publisher
        # For the publisher, it needs a function which will repeatedly get command or data to send out 
        #======================
        #Set up rate for update publishers 
        # Update 30 times per second
        self.rate = rospy.Rate(500)

        # initialize Line tracking topic
        self.line = Line_Tracking()
        self.line_tracking_pub = rospy.Publisher(TOPIC["line_tracking_topic"], 
                                    line_tracking_msg, queue_size=3)

        # initialize ADC topic
        self.adc = Adc()
        self.adc_pub =  rospy.Publisher(TOPIC["adc_topic"],adc_msg, queue_size=3) 

        #======================
        # Service 
        # For service, it need a callback function. 
        # If a request is received, the function will execute and send out a response
        #======================
        # initialize Ultrasonic topic     
        self.ultrasonic = Ultrasonic()
        self.ultrasonic_run = rospy.Service(TOPIC["ultrasonic_topic"],ultrasonic_srv,
                                self.ultrasonic_callback)               

        #======================
        # LED topic assignment
        #======================
        # Initialize the topic for LED (assignment)
        # Base on the previous Subscriber or Service, Create your own one
        self.led = Led()
        self.led_pub = rospy.Subscriber(TOPIC["led_topic"],led_msg,self.led_callback,queue_size=3)
        


    #======================
    # LED callback (assignment)
    #======================    
    # callback LED
    # Based on your own led msg/srv to pass data to your own led driver.
    def led_callback(self, msg):
        self.led.colorWipe(msg.r,msg.g, msg.b)
        
        
        
        
        

       
       






       
       
        #self.led.colorWipe(color(msg.r,msg.g,msg.b))
        #self.led.ledIndex (0xFF, msg.r, msg.g, msg.b)

        

    #======================
    # Subscribers callback collection
    #======================    
    # callback motors
    def motor_callback(self, msg):
        self.motor.setMotorModel(msg.left_Upper_Wheel,
                            msg.left_Lower_Wheel,
                            msg.right_Upper_Wheel,
                            msg.right_Lower_Wheel)

    # callback servo
    def servo_callback(self, msg):   
        self.servo.setServoPwm('0',msg.horizontal)
        self.servo.setServoPwm('1',msg.vertical)

    # callback for buzzer
    def buzzer_callback(self,msg):
        self.buzzer.run(msg.command)

    #======================
    # Service callback collection
    #======================  
    # callback for ultrasonic
    # if request is activate==1, run ultrasonic algorithm
    def ultrasonic_callback(self,srv):
        if srv.activate:
            self.ultrasonic.get_distance()
            return self.ultrasonic.get_distance()
    
    #======================
    # Publishers repeatly update collection
    #======================    
    # regularly updating publishers
    def update(self):
        #--------------------------
        # For line tracking topic
        #--------------------------
        # Declare a variable line_msg that is line_tracking_msg message type
        line_msg = line_tracking_msg()
        # Get the sensors data to the line_msg
        line_msg.left, line_msg.mid, line_msg.right = self.line.signal()
        #Send out line_msg to the line tracking topic
        self.line_tracking_pub.publish(line_msg)

        #--------------------------
        # For adc topic
        #--------------------------
        # Declare a variable volt_msg that is adc_msg message type
        volt_msg = adc_msg()
        # Get the sensors data to the adc_msg
        volt_msg.left=self.adc.recvADC(0)
        volt_msg.right=self.adc.recvADC(1)
        volt_msg.power=self.adc.recvADC(2)*3
        #Send out adc_msg to the adc topic
        self.adc_pub.publish(volt_msg)

        # Update interval
        self.rate.sleep()

    # This will be invoked before actual shutdown occurs
    # prevent motor keep running
    def end(self):
        self.motor.setMotorModel(0,0,0,0)

# A main function allows ROS know how to use this file
if __name__ == '__main__':
    print("start interface")
    # initialize a ROS node in the ROS 
    rospy.init_node('interface2driver', anonymous=True)

    # create a topic dictionary
    # If there has a launch file for this file, rospy.get_param will load parameter from launch instead default
    TOPIC ={}
    TOPIC["motor_topic"] = rospy.get_param("~motor_topic",'/car/hardware/motor')
    TOPIC["servo_topic"] = rospy.get_param("~servo_topic",'/car/hardware/servo')
    TOPIC["buzzer_topic"] = rospy.get_param("~buzzer_topic",'/car/hardware/buzzer')
    TOPIC["led_topic"] = rospy.get_param("~led_topic",'/car/hardware/led')
    TOPIC["line_tracking_topic"] = rospy.get_param("~line_tracking_topic",'/car/hardware/line_tracking')
    TOPIC["adc_topic"] = rospy.get_param("~adc_topic",'/car/hardware/adc')
    TOPIC["ultrasonic_topic"] = rospy.get_param("~ultrasonic_topic",'/car/hardware/ultrasonic')

    # initialize interface
    run = interface2driver(TOPIC)  
    # Keeping this node is activated
    while not rospy.is_shutdown(): 
        # keep repeatly run update       
        run.update()        
    # prevent motor keep running
    run.end()   
    print("\nexit interface")