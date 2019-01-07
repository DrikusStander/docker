FROM ruby:2.5.1

WORKDIR /opt/app
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install nodejs

ONBUILD COPY /app/Gemfile /app/Gemfile.lock ./
ONBUILD RUN bundle install
ONBUILD COPY /app .
ONBUILD RUN bin/rails db:migrate RAILS_ENV=development