#!/bin/sh
#
# Script for focused work
#
opt_focus=$1
opt_rest=$2

focus_time=$(( opt_focus * 60 ));
rest_time=$(( opt_rest * 60 ));

while [ 1 ] ; do
  # focus
  echo "\n## $opt_focus min time block ##\n"
  
  ## notify
 
  ## block distractions
  killall Slack

  ## wait
  sleep $focus_time

  # break
  echo "\n## $opt_rest min break ##\n"
  
  ## notify

  ## re-enable distractions
  open -a Slack -j

  ## wait
  sleep $rest_time
done;
