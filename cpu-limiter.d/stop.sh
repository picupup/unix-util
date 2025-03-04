#!/usr/bin/env bash
# SCRIPT: stop.sh
# AUTHOR: ...
# DATE: 2025-02-05T11:06:21
# REV: 1.0
# ARGUMENTS: [1:        ][2:		][3:		][4:        ]
#
# PURPOSE: stop cpu limiter
#
# set -x # Uncomment to debug
# set -n # Uncomment to check script syntax without execution
# set -e # Break on the first failure


pid_file=~/.cpu-limit.pid
touch ${pid_file}
pid="$(cat ${pid_file})"
echo -n "Stoping: '${pid}'"
./_stop.sh "${pid}" &>/dev/null && \
echo -en "; Done\n" || \
echo -en "; Failed. Job might not exists any more.\n"

> ${pid_file}
