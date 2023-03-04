FROM alpine:latest
LABEL maintainer "niubiya <dev@niubiya.org>"
WORKDIR /
COPY pik ./pik
COPY start.sh ./start.sh
RUN chmod +x ./pik
RUN chmod +x ./start.sh
RUN apk update && \
    apk add --no-cache openssh tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config && \
       ssh-keygen -t dsa -P "" -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key && \
    ssh-keygen -t ecdsa -P "" -f /etc/ssh/ssh_host_ecdsa_key && \
    ssh-keygen -t ed25519 -P "" -f /etc/ssh/ssh_host_ed25519_key && \
    echo "root:admin" | chpasswd
CMD ["/bin/sh","./start.sh"]
EXPOSE 8080
