FROM circleci/ruby:latest
MAINTAINER yhirano55 <yhirano@me.com>
RUN gem update --system && \
    gem update bundler --no-document && \
    gem install circleci-bundle-update-pr --no-document
ADD build.sh /usr/local/bin/build
RUN sudo chmod +x /usr/local/bin/build
