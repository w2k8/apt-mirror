FROM ubuntu:bionic

RUN apt update && \
    apt upgrade -y && \
    apt install -y apt-mirror  

COPY ./files/mirror.list /etc/apt/mirror.list

CMD ["/bin/bash", "/entrypoint.sh"]


