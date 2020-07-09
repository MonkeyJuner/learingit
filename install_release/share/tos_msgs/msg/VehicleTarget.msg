uint8 TAG_ON_ANQIAO = 1
uint8 TAG_ON_CHANGQIAO = 2

uint8 VESSEL_ORIENTATION_FORWARD = 0
uint8 VESSEL_ORIENTATION_BACKWARD = 1

Header header
uint32 task_id
int32 send_packet_id
string chid
geometry_msgs/Point stop_point
int32 stop_tag_id
uint8 stop_tag_type
float64 brake_distance
float64 hadmap_stop_shift
float64 tag_stop_shift
string lane_id

uint8 brake_tag_id_forward
float64 brake_distance_forward

uint8 brake_tag_id_backward
float64 brake_distance_backward

uint8 vessel_orientation


