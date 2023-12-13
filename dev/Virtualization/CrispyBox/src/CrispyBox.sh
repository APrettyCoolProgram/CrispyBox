#!/bin/bash

## CrispyBox v23.5.0-230523

#
# MAIN
#
if [[ "$#" > 0 ]]; then
  requestedAction="$1"
  if [[ "${validActions[*]}" =~ "$requestedAction" ]]; then
    SetRequestedBuildType "${@}"
    SetRequestedBranch "${@}"
    SetVmTool "${@}"
    DisplayWelcomeMessage
    CallAction
    #DebugMode "${@}"
  else
    ExitScript "[CrispyDeven] Invalid argument: \"$requestedAction\". $errorMessageHelp"
  fi
else
  ExitScript "[CrispyDeven] Missing argument(s). $errorMessageHelp"
fi

#-# ShutdownRebootOrExit