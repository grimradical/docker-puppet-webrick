This is a setup using gobetween for puppet masters, running using Webrick. It
looks for docker containers with a label 'puppetserver=true'. Then it scales
them out. This container assumes that you run on the host with docker
(basically you're scaling containers of masters on a single host).
