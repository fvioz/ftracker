# frozen_string_literal: true

module Ftracker
  module Subscribers
    class ActiveJob < ::Ftracker::Subscriber
      attach_to :active_job

      def enqueue_at(event); end

      def enqueue(event); end

      def perform_start(event); end

      def perform(event); end
    end
  end
end
