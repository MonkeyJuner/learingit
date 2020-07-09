uint8 TYPE_ON_APPEAR = 0
uint8 TYPE_ON_DISAPPEAR = 1


Header header
uint32 task_id

# distance, [0, unlimit]
float64 distance_shift

float64 angle # rad
float64 distance_vertical

# type
uint8 type

# for test
int32 send_packet_id
