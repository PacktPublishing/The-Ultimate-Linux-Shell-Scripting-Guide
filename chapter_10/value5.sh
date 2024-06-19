#!/bin/bash
valuepass() {
	local __internalvar=$1
	local myresult='Shell scripting is cool!'
	eval $__internalvar="'$myresult'"
}

valuepass result
echo $result
