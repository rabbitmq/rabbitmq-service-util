# rabbitmq-service-util

Utility code to obtain the RabbitMQ service connection information on
multiple PaaSes.  The returned connection info can then be passed to
common Ruby AMQP client libraries, such as the
[amqp gem](https://github.com/ruby-amqp/amqp) or
[bunny gem](https://github.com/ruby-amqp/bunny)

Currently supports [Cloud Foundry](http://www.cloudfoundry.com) and
[Heroky](http://heroku.com).

## Getting started

Add the rubygem to your application's Gemfile:

  gem 'rabbitmq-service-util'

## Usage

  require 'rabbitmq-service-util'

  # If using the amqp gem
  connection = AMQP.connect(RabbitMQ::amqp_connection_url)

  # If using the bunny gem
  connection = Bunny.new(RabbitMQ::amqp_connection_url)
