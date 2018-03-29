#!/bin/sh

containers=`docker ps  --filter label=puppetserver=true --format {{.Ports}} | cut -d\- -f1`

for uri in `echo ${containers}`
do
  echo ${uri}
done
