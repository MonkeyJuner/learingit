uint8 MODE_MANUAL = 70
uint8 MODE_AUTO = 71
uint8 MODE_INTERVENED = 72

Header header

float64 vehicle_speed    # m/s
float64 odometer         # m

float64[] wheel_speed    # m/s, start from FL, clockwise.
float64[] wheel_odometer # m, start from FL, clockwise.

float64 wheel_angle_left # degree
float64 wheel_angle_right# degree

float64 yaw_rate         # rad/s
float64 gx               # m/s2
float64 gy               # m/s2

uint8 steering_mode
float64 steering_angle   # degree

uint8 throttle_mode
float64 throttle         # 0.0 ~ 1.0; -1.0 for unavailable.

uint8 brake_mode
float64 brake            # 0.0 ~ 1.0; -1.0 for unavailable.

uint8 acceleration_mode
float64 acceleration     # m/s2

uint8 gear_mode
Gear gear

uint8 turn_light_status
uint8 door_status
uint8 wiper_status
uint8 horn_status
uint8 light_status
uint8 dump_energy_status

uint8 auto_driver_status           #0:auto_driver          1:human intervention 2:udp lost 3:can lost 5:cdc lost
uint16 vehicle_error_status        #contain eight status, each status takes 2 bits          steering_error/gear_error/throttle_error/brake_error/vehicle_error

uint8 emergency_stop_status        #0:normal 1:stop_status

float64 brake_air_pressure_0 # air pressure
float64 brake_air_pressure_1
