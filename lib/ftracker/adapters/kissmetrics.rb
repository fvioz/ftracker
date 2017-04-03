# frozen_string_literal: true

require 'ftracker/subscribers/base'

module Ftracker
  module Adapters
    class Kissmetrics < ::Ftracker::Adapter
      def client(host = 'localhost', port = 9125)
        @_client ||= Statsd.new host, port
      end

      def increment(metric)
        gauge(metric, 1)
      end

      def gauge(metric, value)
        client.gauge metric, value
      end

      def benckmark(metric, value)
        client.timing metric, value
      end
    end
  end
end
