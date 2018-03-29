#!/bin/bash

if test -n "${PUPPETDB_SERVER_URLS}" ; then
  sed -i "s@^server_urls.*@server_urls = ${PUPPETDB_SERVER_URLS}@" /etc/puppetlabs/puppet/puppetdb.conf
fi

#exec /opt/puppetlabs/bin/puppet "$@"
exec /opt/puppetlabs/bin/puppet master --verbose --no-daemonize
