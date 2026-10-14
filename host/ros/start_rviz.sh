#!/bin/bash
# Inside WSL: the bridge node and RViz with the prepared view. Stops both when RViz is closed.
source /opt/ros/jazzy/setup.bash
here="$(cd "$(dirname "$0")" && pwd)"
python3 "$here/mini_ros_node.py" &
node=$!
rviz2 -d "$here/mini.rviz"
kill $node 2>/dev/null
