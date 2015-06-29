##########################
## Alpine based OPENSSH ##
##########################
FROM alpine
MAINTAINER Chamunks <Chamunks@gmail.com>
## Prepare ##
COPY sshd_config /etc/ssh/sshd_config
ADD https://gist.githubusercontent.com/chamunks/38c807435ffed53583f0/raw/ec868d1b45e248eb517a134b84474133c3e7dc66/gistfile1.txt /data/.ssh/authorized_keys
RUN apk add --update openssh && \
    rc-update add sshd && \
    rc-status && \
    touch /run/openrc/softlevel && \
    /etc/init.d/sshd start && \
    /etc/init.d/sshd stop && \
    adduser -D user -h /data/

VOLUME ["/data/"]
EXPOSE 22

ENTRYPOINT  ["/bin/sh"]
CMD  ["/usr/sbin/sshd", "-D"]
