FROM rabbitmq:4.2-management

# Install curl
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Install delayed message exchange plugin
RUN mkdir -p /opt/rabbitmq/plugins && \
  curl -L -o /opt/rabbitmq/plugins/rabbitmq_delayed_message_exchange.ez \
  https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v4.2.0/rabbitmq_delayed_message_exchange-4.2.0.ez

# Enable plugin
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

# Expose AMQP + Management
EXPOSE 5672 15672

# Default command
CMD ["rabbitmq-server"]
