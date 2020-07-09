# control mode
uint8 MODE_AUTO                 = 0
uint8 MODE_LATERAL_CLOSED_LOOP  = 1
uint8 MODE_SPEED_CLOSED_LOOP    = 2
uint8 MODE_OPEN_LOOP            = 3

# lateral state
uint8 LATERAL_KEEP_LANE         = 0
uint8 LATERAL_CHG_TO_LEFT       = 1
uint8 LATERAL_CHG_TO_RIGHT      = 2

# longtude state
uint8 SPEED_PARK   = 0
uint8 SPEED_FOLLOW = 1
uint8 SPEED_ESTOP  = 2
uint8 SPEED_BRAKE  = 3

# turn light direction
uint8 DIR_STRAIGHT              = 0
uint8 DIR_TURN_LEFT             = 1
uint8 DIR_TURN_RIGHT            = 2

Header header

# control mode
uint8               mode

# trajectory in utm coord
pnc_msgs/Trajectory utm_traj

# trajectory in vehicle coord
pnc_msgs/Trajectory veh_traj

# real time speed in [km/h]
float64             rt_speed

# target follow speed in [km/h]
float64             final_speed

# target follow distance in [m]
float64             final_distance

# lateral state
uint8               lateral_state

# speed state
uint8               speed_state

# if vehicle stop at dest
bool                stop_at_dest

# turn light direction when change lane or turn
uint8               turn_direction

int32 task_id
