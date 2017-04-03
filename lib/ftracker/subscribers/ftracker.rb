# frozen_string_literal: true

require 'ftracker/subscriber'

module Ftracker
  module Subscribers
    class Ftracker < Base
      attach_to :ftracker

      def benchmark(event)
        report(event)
      end
    end
  end
end
