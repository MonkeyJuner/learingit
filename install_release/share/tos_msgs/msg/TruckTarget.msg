# command type
uint8 START_FROM      = 0
uint8 ARRIVE_AT       = 1

# operate type
uint8 LOAD	= 0
uint8 UNLOAD	= 1


Header header

# truck id
string cheid

# task id
uint32 task_id
uint16 sub_task_id

# taget info
TargetInfo[] targets

# display message
string display_msg

# operate
uint8 operate_type

# for test
uint8 command_type
int32 send_packet_id
