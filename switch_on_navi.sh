#!/bin/sh
# this script would be called from QML demo UI when a button of map is clicked

if [ $AGL_NAVI = "TRUE" ]; then
export XDG_RUNTIME_DIR=/run/user/0
/usr/bin/LayerManagerControl set layer 1000 render order 2147483649,2147483648
fi

