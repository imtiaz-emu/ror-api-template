FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ror-api
WORKDIR /ror-api
ADD Gemfile /ror-api/Gemfile
ADD Gemfile.lock /ror-api/Gemfile.lock
RUN bundle install
ADD . /ror-api