ARG RUBY_VERSION=2.5.1

FROM ruby:${RUBY_VERSION}

RUN mkdir -p workspace

RUN apt-get update &&\
	  apt-get install -y --no-install-recommends \
        postgresql-client &&\
    apt-get install -y curl &&\
    curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
    apt-get install -y nodejs &&\
    npm install -g yarn

WORKDIR workspace

ENV BUNDLE_PATH /gems

COPY Gemfile* ./
COPY package.json yarn.lock ./

RUN bundle check || bundle install
RUN yarn install --check-files

COPY . .