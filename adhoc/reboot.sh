#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo -e "\n\nUsage: $0 <host(s)>\n\n"
  exit 1;
fi

host=$1
cmd="ansible $host -a "/sbin/reboot" --become"
echo "$cmd"
eval $cmd
exit 0
