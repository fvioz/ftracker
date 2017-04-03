# frozen_string_literal: true

require 'active_support/subscriber'

module Ftracker
  module Subscribers
    class Base < ActiveSupport::Subscriber
      extend Forwardable
      def_delegator Ftracker::Proxy, :instrument
      def_delegator Ftracker::Proxy, :benckmark
      def_delegator Ftracker::Proxy, :increment
    end
  end
end
