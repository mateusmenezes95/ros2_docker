#!/bin/bash
set -e

if [ ! -f "${HOME}/.bashrc" ]; then
    touch ${HOME}/.bashrc
    wget \
    https://gist.githubusercontent.com/mateusmenezes95/2dbf4d25675aff388f5e4444db320632/raw/pretty_terminal.sh \
    -O - >> ~/.bashrc
fi

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"

exec "$@"
