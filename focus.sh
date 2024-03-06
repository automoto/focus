#!/bin/sh
#
# Script for focused work
#
opt_focus=$1
opt_rest=$2

focus_time=$(( opt_focus * 60 ));
rest_time=$(( opt_rest * 60 ));

while [ true ] ; do
  #### FOCUS TIME START ####
  # Notify
  echo "\n## $opt_focus min time block ##\n"
  osascript -e 'display notification "block beginning" with title "Starting Focused Work Block"'
  
  # Remove distractions
  killall Slack
  
  # Wait for time block to be over
  sleep $focus_time

  #### FOCUS TIME BREAK ####
  # Notify
  echo "\n## $opt_rest min break ##\n"
  osascript -e 'display notification "breaktime" with title "Break for Time Block"'
  
  # Pause distraction removal
  open -a Slack -j
  
  # Wait for time block to be over
  sleep $rest_time
done;
