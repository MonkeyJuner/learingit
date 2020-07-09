Header header

geometry_msgs/Vector3 gnss_velocity
geometry_msgs/Vector3 gnss_orientation
sensor_msgs/NavSatFix gnss_position

float64 utm_east
float64 utm_north

float32 latitude_std
float32 longitude_std
float32 altitude_std

float32 north_velocity_std
float32 east_velocity_std
float32 up_velocity_std

float32 roll_std
float32 pitch_std
float32 yaw_std

uint8 gps_status
uint8 sate_num

# utc time
uint16 year
uint8 month
uint8 day
uint8 hour
uint8 minuter
float32 second
