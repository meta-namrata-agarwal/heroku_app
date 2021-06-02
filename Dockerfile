FROM ruby:2.4.5
RUN apt-get update -qq && apt-get install -y aspell build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
CMD ["bundle", "exec", "puma" ,"-C" ,"config/puma.rb"]