uint8 UNCLASSIFIED          = 0
uint8 STOP_SIGN_ABSOLUTE    = 1
uint8 STOP_SIGN_RELATIVE    = 2
uint8 OBJECT                = 3
uint8 OBJECT_VIRTUAL        = 4
uint8 OBJECT_CLOSE          = 5
uint8 OGM                   = 6
uint8 HMAP_SPEED_LIMIT      = 7
uint8 CURV_SPEED_LIMIT      = 8
uint8 LONGITUDE_CMD         = 9

uint8   type
uint32  id
float64 distance
float64 speed

float64 x           # Optional
float64 y           # Optional
float64 z           # Optional
float64 heading     # Optional


