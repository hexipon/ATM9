FROM debian:bookworm-slim

RUN apt-get update
WORKDIR /var/www
ADD . /var/www
RUN cd /var/www
RUN apt-get install default-jre -y
RUN bash startserver.sh