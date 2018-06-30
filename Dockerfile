##########################
## Alpine based OPENSSH ##
##########################
FROM alpine
MAINTAINER Chamunks <Chamunks [AT] gmail [DOT] com>
## Prepare ##
# COPY sshd_config /etc/ssh/sshd_config

ADD start.sh /bin/start

RUN apk --update --no-cache add openssh curl wget bash && \
    adduser user -h /data/ -s /bin/bash -D

VOLUME ["/data/"]
VOLUME ["/etc/ssh/"]

EXPOSE 22

ENTRYPOINT  ["/bin/bash"]
CMD  ["start"]
