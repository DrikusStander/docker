#! /bin/sh

docker build -t ft-rails ./app\
docker build -t rails-app .
docker run -it --rm --name my-ruby-app -p 3000:3000 ruby-app