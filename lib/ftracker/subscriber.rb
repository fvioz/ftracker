# frozen_string_literal: true

require 'active_support/subscriber'

module Ftracker
  class Subscriber < ActiveSupport::Subscriber
    extend Forwardable
    def_delegator Ftracker::Proxy, :instrument
    def_delegator Ftracker::Proxy, :benckmark
    def_delegator Ftracker::Proxy, :incrementend
  end
end
