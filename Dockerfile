##########################
## Alpine based OPENSSH ##
##########################
FROM alpine
MAINTAINER Chamunks <Chamunks@gmail.com>
## Prepare ##
RUN apk add --update openssh && \
    rc-update add sshd && \
    rc-status && \
    touch /run/openrc/softlevel && \
    /etc/init.d/sshd start && \
    /etc/init.d/sshd stop
VOLUME ["/root/.ssh/authorized_keys", "/etc/ssh/sshd_config"]
ENTRYPOINT  ["/usr/sbin/sshd", "-D", "-d"]
