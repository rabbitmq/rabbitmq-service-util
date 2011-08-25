require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "rabbitmq-service-util"
  gem.version = "0.2"
  gem.license = "MIT"
  gem.summary = %Q{Makes accessing the RabbitMQ service/add-on super easy}
  gem.description = %Q{
Utility code to obtain the RabbitMQ service connection information on
multiple PaaSes.  The returned connection info can then be passed to
common Ruby AMQP client libraries.
}
  gem.email = "info@rabbitmq.com"
  gem.authors = ["The RabbitMQ team at VMware"]
  gem.homepage = "http://github.com/rabbitmq/rabbitmq-service-util"
  gem.files = FileList["**/*"].exclude("*~")
  gem.executables = FileList["bin/*"].pathmap("%f")
end
Jeweler::RubygemsDotOrgTasks.new
