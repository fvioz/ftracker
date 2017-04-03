# frozen_string_literal: true

module Ftracker
  module Subscribers
    class ActionMailer < ::Ftracker::Subscriber
      attach_to :action_mailer

      def receive(event); end

      def deliver(event); end
    end
  end
end
