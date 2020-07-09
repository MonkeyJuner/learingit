uint8 STOP_UNKNOWN = 0
uint8 STOP_FOR_MAP = 1
uint8 STOP_FOR_TAG = 2
uint8 STOP_FOR_PLC = 3

Header header
uint32 task_id
string chid
uint8 stop_for
int32 send_packet_id
int32 stop_tag_id
uint8 stop_tag_type
float64 stop_offset
