# frozen_string_literal: true

module Ftracker
  module Subscribers
    class ActiveSupport < ::Ftracker::Subscriber
      attach_to :active_support

      def cache_read(event); end

      def cache_generate(event); end

      def cache_fetch_hit(event); end

      def cache_write(event); end

      def cache_delete(event); end

      def cache_exist?(event); end
    end
  end
end
