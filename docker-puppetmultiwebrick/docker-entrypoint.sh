#!/bin/bash

if test -n "${PUPPETDB_SERVER_URLS}" ; then
  sed -i "s@^server_urls.*@server_urls = ${PUPPETDB_SERVER_URLS}@" /etc/puppetlabs/puppet/puppetdb.conf
fi

exec /run-webrick.sh
#exec /opt/puppetlabs/bin/puppet master --verbose --no-daemonize
