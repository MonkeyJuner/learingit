uint8 TASK_ON_ANQIAO = 1
uint8 TASK_ON_CHANGQIAO = 2
uint8 TASK_ON_LOCK = 3

Header header
uint32 task_id

string crane_id
uint8 task_type
uint8 container_pos
uint8 lane_id

# for test
int32 send_packet_id
