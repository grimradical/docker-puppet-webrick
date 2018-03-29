# What is this?

This repo lets you stand up a puppet environment in Docker, where each puppet
compiler is running using Webrick. This is an experiment, so caveat emptor and
all that.

# DNS Stuff

You should make the host where docker-compose is running respond to a CNAME of
puppet, or put that in /etc/hosts on your clients. This is a known setup
requirement at this time.

# Getting going

    docker-compose up

To scale out by adding more compilers:

    docker-compose scale puppet=10

To scale down:

    docker-compose scale puppet=1

