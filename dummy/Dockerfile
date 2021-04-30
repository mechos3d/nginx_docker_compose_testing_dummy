FROM ruby:2.5.1-alpine

ENV BUNDLER_VERSION=2.0.1

RUN gem install bundler -v 2.0.1

WORKDIR /app

COPY . ./

RUN bundle install

CMD ["ruby", "app.rb"]
