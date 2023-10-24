#!/bin/bash

source ~/ws_droneSchool/devel/setup.bash

killall -9 gzclient
killall -9 gzserver

roslaunch drone_school run_drone_school.launch
