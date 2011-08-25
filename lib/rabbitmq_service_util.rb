module RabbitMQ
  # Obtain the AMQP connection URL for the RabbitMQ service instance
  # for this app.  This URL can be passed directly to recent versions
  # onf the amqp and bunny gems.
  def self.amqp_connection_url
    cf_amqp_connection_url || heroku_amqp_connection_url
  end

  # Obtain the AMQP connection URL on Cloud Foundry
  def self.cf_amqp_connection_url
    services = JSON.parse(ENV['VCAP_SERVICES'], :symbolize_names => true)
    url = services.values.map do |srvs|
      srvs.map do |srv|
        if srv[:label] =~ /^rabbitmq-/
          srv[:credentials][:url]
        else
          []
        end
      end
    end.flatten!.first
  end

  # Obtain the AMQP connection URL on Heroku
  def self.heroku_amqp_connection_url
    ENV['RABBITMQ_URL']
  end
end
