// Copyright 2019, trunk Inc. All rights reserved

#pragma once

#include <gflags/gflags.h>

DECLARE_string(topic_local_map);          // hadmap server
DECLARE_string(topic_ogm);                // perception
DECLARE_string(topic_objs);               // perception
DECLARE_string(topic_loc);                // localization
DECLARE_string(topic_vehicle_feedback);   // pncc
DECLARE_string(topic_planning_cmd);       // pncc
DECLARE_string(topic_control_cmd);        // pncc
