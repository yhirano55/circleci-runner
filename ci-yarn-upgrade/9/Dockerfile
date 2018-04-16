FROM circleci/node:9
MAINTAINER yhirano55 <yhirano@me.com>
RUN sudo sh -c 'echo "deb http://ftp.us.debian.org/debian testing main contrib non-free" >> /etc/apt/sources.list'
RUN sudo apt-get update -qq && \
    sudo apt-get install -y binutils git && \
    yarn global add ci-yarn-upgrade
ADD build.sh /usr/local/bin/build
RUN sudo chmod +x /usr/local/bin/build
