uint8 MODE_MANUAL = 100
uint8 MODE_AUTO = 101

uint8 OFF = 150              # For horn, left_light and right_light
uint8 ON = 151               # For horn, left_light and right_light

uint8 TURN_LIGHT_LEFT = 0
uint8 TURN_LIGHT_RIGHT = 1
uint8 TURN_LIGHT_BOTH = 2
uint8 TURN_LIGHT_INVALID = 3

uint8 LIGHT_CLOSE = 0
uint8 LIGHT_NEAR = 1
uint8 LIGHT_FAR = 2
uint8 LIGHT_INVALID = 3

uint8 WIPER_CLOSE = 0
uint8 WIPER_RUN = 1
uint8 WIPER_RESERVE = 2
uint8 WIPER_INVALID = 3

uint8 DOOR_NO_CONTROL = 0
uint8 DOOR_NORMAL_OPEN = 1
uint8 DOOR_EMERGENCY_OPEN = 2
uint8 DOOR_RESERVE = 3

uint8 HORN_NO_CONTROL = 0
uint8 HORN_OPEN = 1

Header header

uint8 steering_mode
float64 steering_angle     # -1.0 ~ 1.0, positive number on the right side
float64 steering_speed     # 0.0 ~ 1.0

uint8 throttle_mode
float64 throttle           # 0.0 ~ 1.0
uint8 brake_mode
float64 brake              # 0.0 ~ 1.0

float64 acceleration_request   # m/s2
uint8 acceleration_mode

pncc_msgs/Gear gear
uint8 gear_mode

uint8 turn_light_mode
uint8 turn_light            #0:left  1:right  2:both  3:invalid

uint8 light_mode
uint8 light                 #front light    0:close  1:near light   2:far light  3:invalid

uint8 wiper_mode
uint8 wiper                 #0:wiper close  1:run wiper  2:reserve  3:invalid

uint8 door_mode
uint8 door                  #0:no control  1:normal open  2:emergency open  3:reserve

uint8 horn_mode
uint8 horn               #0:no control  1:open

uint8 auto_driver_cmd
uint8 e_stop_cmd


