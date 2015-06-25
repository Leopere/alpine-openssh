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
VOLUME ["/root/.ssh/authorized_keys", "moduli", "/etc/ssh/ssh_host_dsa_key.pub", "/etc/ssh/ssh_host_ed25519_key", "/etc/ssh/ssh_host_key.pub", "/etc/ssh/sshd_config", "/etc/ssh/ssh_host_ecdsa_key", "/etc/ssh/ssh_host_ed25519_key.pub", "/etc/ssh/ssh_host_rsa_key", "/etc/ssh/ssh_host_dsa_key", "/etc/ssh/ssh_host_ecdsa_key.pub", "/etc/ssh/ssh_host_key", "/etc/ssh/ssh_host_rsa_key.pub"]
ENTRYPOINT  ["/usr/sbin/sshd", "-D", "-d"]
