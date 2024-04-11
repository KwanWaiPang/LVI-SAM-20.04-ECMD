gnome-terminal --tab  -e 'bash -c "roslaunch lvi_sam run.launch;exec bash"'
sleep 1s


gnome-terminal --window -e 'bash -c "rosbag play -r 1.0 --pause /home/kwanwaipang/dataset/ECMD/urban_day_0626.synced.merged.bag;exec bash"'
sleep 1s
gnome-terminal --window -e 'bash -c "rosbag record /lvi_sam/lidar/mapping/odometry -O /home/kwanwaipang/dataset/lio_sam_urban_day_0626.synced.merged;exec bash"'
