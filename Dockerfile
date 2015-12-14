FROM ubuntu:14.04
MAINTAINER Vitalii Golovanev <v.golovanev@gmail.com>
RUN curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
RUN echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
RUN sudo apt-get update
RUN sudo apt-get install syncthing
ENTRYPOINT syncthing
EXPOSE 8384 22000