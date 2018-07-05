FROM centos:latest
MAINTAINER gagan <gagangiri94@gmail.com>
RUN yum update -y


# - install java8 jdk
RUN yum install -y net-tools wget && cd ~ && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all

RUN useradd -ms /bin/bash user1

USER user1

ENV JAVA_BIN /usr/java/jdk1.8.0/jre/bin
