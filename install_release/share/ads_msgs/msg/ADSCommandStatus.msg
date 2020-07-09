# 状态-执行中
uint8 STATUS_EXECUTING = 0
# 状态-已完毕
uint8 STATUS_DONE = 1
# 状态-错误
uint8 STATUS_ERROR = 2
# 状态-无效
uint8 STATUS_UNVALID = 3

# 错误-执行命令超时
uint8 ERROR_TIMEOUT = 1
# 错误-当不允许执行该命令
uint8 ERROR_REJECT = 2
# 错误-命令执行结果不符合预期
uint8 ERROR_FAIL = 3
# 错误-重复命令
uint8 ERROR_REPEAT = 4

# 命令唯一标识
uint32 id

# 命令状态
uint8 status

# 错误码
uint8[] err_codes