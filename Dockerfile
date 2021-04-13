FROM ruby:2

RUN gem install capistrano
RUN gem install capistrano-composer
RUN gem install capistrano-copy-files
RUN gem install capistrano-file-permissions
RUN gem install capistrano-npm
RUN gem install capistrano-safe-deploy-to
RUN gem install capistrano-symfony -v 1
RUN gem install slackistrano
RUN gem install mail

RUN curl -sL https://sentry.io/get-cli/ | bash

WORKDIR /root/workspace
