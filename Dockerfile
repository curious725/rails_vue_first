FROM ruby:2.2.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
  \ yarn
RUN mkdir /rails_vue_first
WORKDIR /rails_vue_first
COPY Gemfile /rails_vue_first/Gemfile
COPY Gemfile.lock /rails_vue_first/Gemfile.lock
RUN bundle install
COPY . /rails_vue_first
