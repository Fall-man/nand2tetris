# ubuntu 16.04 latest をベースにする
FROM ubuntu:16.04

# エディタの整備
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

# java環境の整備
RUN ["apt-get", "install", "-y", "openjdk-11-jdk"]