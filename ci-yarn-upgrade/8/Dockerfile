FROM circleci/node:8
MAINTAINER yhirano55 <yhirano@me.com>
RUN sudo apt-get update && \
    sudo apt-get install -y git && \
    yarn global add ci-yarn-upgrade
ADD build.sh /usr/local/bin/build
RUN sudo chmod +x /usr/local/bin/build
