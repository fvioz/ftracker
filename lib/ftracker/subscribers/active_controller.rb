# frozen_string_literal: true

module Ftracker
  module Subscribers
    class ActiveController < ::Ftracker::Subscriber
      attach_to :active_controller

      def write_fragment(event); end

      def read_fragment(event); end

      def expire_fragment(event); end

      def exist_fragment?(event); end

      def write_page(event); end

      def expire_page(event); end

      def start_processing(event); end

      def process_action(event); end

      def send_file(event); end

      def send_data(event); end

      def redirect_to(event); end

      def halted_callback(event); end
    end
  end
end
