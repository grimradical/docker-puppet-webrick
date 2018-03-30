#!/bin/bash

# generate certs
puppet cert list -a
puppet master --no-daemonize --verbose &
sleep 10
kill %1

for i in $(seq 10); do
  echo Starting webrick-${i}
  puppet master --no-daemonize --verbose --masterport=$((8140 + $i)) --rundir=/var/run/puppetlabs${i} &
done

wait
