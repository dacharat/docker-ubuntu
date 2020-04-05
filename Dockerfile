FROM ubuntu:18.04

ENV GITHUB_USERNAME="dacharat"
ENV GITHUB_EMAIL="dacharat.p@ku.th"

# install git, vim and python3
RUN apt-get update \
  && apt-get install -y git vim python3-pip python3-dev \
  && git config --global user.name $GITHUB_USERNAME \
  && git config --global user.email $GITHUB_EMAIL \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

# install java 11
ENV JAVA_VERSION="jdk-11.0.2"
RUN apt-get update \
  && apt-get install software-properties-common -y \
  && apt-get install wget -y \
  && wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz \
  && tar -xzvf *.tar.gz \
  && mv $JAVA_VERSION /usr/local/share/ \
  && rm *.tar.gz
ENV JAVA_HOME=/usr/local/share/$JAVA_VERSION
ENV PATH="$JAVA_HOME/bin:$PATH"