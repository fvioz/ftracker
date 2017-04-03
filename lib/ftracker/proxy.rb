# frozen_string_literal: true

require 'active_support/core_ext/class/subclasses'

module Ftracker
  class Proxy
    class << self
      # def instrument(*args)
      #   event = ActiveSupport::Notifications::Event.new(*args)
      #   instrument(:event, event)
      # end

      def benckmark(metric, duration)
        instrument(:benckmark, event)
      end

      def increment(metric, value = 1)
        instrument(:increment, event)
      end

      def decrement(metric, value = -1)
        instrument(:decrement, event)
      end

      private

      def instrument(method, event)
        Ftracker::Adapter.subclasses.each do |adapter|
          adapter.report(event) if is_allowed?(adapter, event)
        end
      end

      def is_allowed?(adapter, metric)
        config = ::Ftracker.config_for(adapter)
        config.has?(metric)
      end
    end
  end
end
