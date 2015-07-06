# OpenSSH-Server Container
`Complexity is the enemy of security`
This container is intended to just be a simple probably poorly made OpenSSH-Server running on the ultra minimalistic [Alpine Linux](https://www.alpinelinux.org/) [Container](https://registry.hub.docker.com/_/alpine/) for the sake of sticking to docker standards and application separation. Containers are not intended to have more than one process/service running at a time for security purposes I've isolated this container as thinly as possible to help keep outward facing processes separate from internal ones.

`Why wouldn't I just include SSH in my container?`

This seems like the logical thing to do but in reality you now open your container to more than one attack vector so now you need to consider security of more than one process for your container.  This requires management of user accounts and ssh keypairs and if you're really lazy usernames and passwords.

`But this makes it really annoying and complex to deploy!`
Yes it can but with docker-compose.yml files you can easily launch a complex interdependent application with one command `docker-compose up`! You can easily create your own YAML parsed docker-compose.yml yourself or you can use services like [this one](https://lorry.io/) to create your own complex application.  One day I may include an example WordPress deployment or something.

`Why not separate commands in your Dockerfile by using the RUN directive for each command rather than separating commands simply with line breaks`

Every RUN directive creates another layer in your container which makes your container much larger than it needs to be.  Meaning if you do any package or archive cleanup after you've installed a bunch of things you're not actually saving any space.

## Current Status
Incomplete but mostly-functional.

## ToDo
- Inject AuthorizedKeys
- Inject more secure sshd_config
- Disallow Password Auth
- Maybe don't run as root.

## Health & Statistics
#### Repository Health
[![GitHub issues](https://img.shields.io/github/issues/chamunks/alpine-openssh.svg?style=flat-square)](https://github.com/chamunks/alpine-openssh) out of [![GitHub total issues](https://img.shields.io/github/issues-raw/chamunks/alpine-openssh.svg?style=flat-square)](https://github.com/chamunks/alpine-openssh)

#### Container Build Health
[![Docker Pulls](https://img.shields.io/docker/pulls/chamunks/alpine-openssh.svg?style=flat-square)](https://registry.hub.docker.com/u/chamunks/alpine-openssh/)
[![Docker Stars](https://img.shields.io/docker/stars/chamunks/alpine-openssh.svg?style=flat-square)](https://registry.hub.docker.com/u/chamunks/alpine-openssh/)
[![Docker Build Status](http://hubstatus.container42.com/chamunks/alpine-openssh)](https://registry.hub.docker.com/u/chamunks/alpine-openssh)

#### Repository Statistics/Info
[![GitHub license](https://img.shields.io/github/license/chamunks/alpine-openssh.svg?style=flat-square)](https://github.com/chamunks/alpine-openssh)

[![GitHub forks](https://img.shields.io/github/forks/chamunks/alpine-openssh.svg?style=flat-square)](https://github.com/chamunks/alpine-openssh)
[![GitHub stars](https://img.shields.io/github/stars/chamunks/alpine-openssh.svg?style=flat-square)](https://github.com/chamunks/alpine-openssh)
