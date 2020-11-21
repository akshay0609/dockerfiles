ARG RUBY_VERSION=2.5.1
ARG APP_NAME=${APP_NAME}

FROM ruby:${RUBY_VERSION}

RUN apt-get update &&\
	  apt-get install -y --no-install-recommends \
        postgresql-client &&\
    apt-get install -y curl &&\
    curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
    apt-get install -y nodejs &&\
    npm install -g yarn

RUN mkdir -p workspace/${APP_NAME}

WORKDIR workspace/${APP_NAME}

ENV BUNDLE_PATH /gems

COPY Gemfile* ./

RUN bundle check || bundle install

COPY . .