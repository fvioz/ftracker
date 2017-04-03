# frozen_string_literal: true

module Ftracker
  module Subscribers
    class ActiveRecord < ::Ftracker::Subscriber
      attach_to :active_record

      def sql(event)
        instrument(event)
      end

      def instantiation(event); end
    end
  end
end
