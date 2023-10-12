#!/bin/bash
echo "262144" > /proc/sys/vm/max_map_count
Max_Map_Count=`cat /proc/sys/vm/max_map_count`
if [ "$Max_Map_Count" -ge "262144" ];then
    echo "true"
else
    echo "false"
fi