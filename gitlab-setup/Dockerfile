FROM ruby:2.5

WORKDIR /usr/src/app

COPY Gemfile ./
RUN bundle install

COPY build.sh ./
COPY setup.rb ./
COPY projects ./projects/

CMD ["./build.sh"]
