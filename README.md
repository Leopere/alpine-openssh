# OpenSSH-Server Container
[![Docker Build Status](http://hubstatus.container42.com/chamunks/alpine-openssh)](https://registry.hub.docker.com/u/chamunks/alpine-openssh)
[![License: MIT](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/chamunks/alpine-openssh/blob/master/LICENSE)

This container is intended to just be a simple probably insecure OpenSSH-Server for the sake of sticking to docker standards of application separation.  

## Current Status
Incomplete but functional.

## ToDo
- Inject AuthorizedKeys
- Inject more secure sshd_config
- Disallow Password Auth
- Maybe don't run as root.
