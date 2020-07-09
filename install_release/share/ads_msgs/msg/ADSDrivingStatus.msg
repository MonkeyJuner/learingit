# 状态-等待目标
uint8 STATUS_WAIT_TARGET = 0
# 状态-等待启动
uint8 STATUS_WAIT_START = 1
# 状态-驶向终点
uint8 STATUS_TRAVEL = 2
# 状态-到达终点
uint8 STATUS_ARRIVED = 3
# 状态-错误
uint8 STATUS_ERROR = 4
# 状态-无效
uint8 STATUS_UNVALID = 5

# 错误-未处于自动驾驶状态
uint8 ERROR_AUTO_OFF = 0
# 错误-硬件锁定
uint8 ERROR_HARDWARE_LOCK = 1
# 错误-定位或底盘失效
uint8 ERROR_VEHICLE = 2
# 错误-地图
uint8 ERROR_MAP = 3
# 错误-雷达
uint8 ERROR_LADAR = 4
# 错误-长时间无法到达终点
uint8 ERROR_CANNOT_ARRIVE = 5

# 任务ID
uint32 task_id

# 行驶状态
uint8 status

# 错误码
uint8[] err_codes