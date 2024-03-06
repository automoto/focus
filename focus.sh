#!/bin/sh
#
# Script for focused work
#
opt_focus=$1
opt_rest=$2

focus_time=$(( opt_focus * 60 ));
rest_time=$(( opt_rest * 60 ));

while [ true ] ; do
  # focus
  echo "\n## $opt_focus min time block ##\n"
  # blink1-tool -l 0 --red | exit
  osascript -e 'display notification "block beginning" with title "Starting Focused Work Block"'
  spt play --name "Ambient '24" --playlist
  curl -X POST "https://www.rescuetime.com/anapi/start_focustime?key=$API_KEY&duration=$opt_focus"
  killall Slack
  sleep $focus_time

  # break
  echo "\n## $opt_rest min break ##\n"
  # blink1-tool -l 0 --green | exit
  osascript -e 'display notification "breaktime" with title "Break for Time Block"'
  spt playback --toggle
  curl -X POST "https://www.rescuetime.com/anapi/end_focustime?key=$API_KEY"
  open -a Slack -j
  sleep $rest_time
done;
