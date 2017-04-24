#!/bin/bash
#
# (C) Patrick Kowalik (v.1.0.1)
# 
# Script to start/stop/restart mysql server

scriptname=$(basename $0)
path="SET THE PATH"

if [ $# != 1 ]
then
	echo "Usage: $scriptname <start/stop/restart>"
	exit;
fi

case "$1" in

	start) echo "start"
	       sudo $path start
	       ;;

	stop) echo "stop"
	      sudo $path stop
	      ;;

	restart) echo "restart"
	         sudo $path restart
		 ;;
	
	*) echo "unknown command"
	   exit;
	   ;;
esac
