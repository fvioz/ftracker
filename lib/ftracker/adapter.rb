# frozen_string_literal: true

module Ftracker
  class Adapter
    class << self
      def client
        raise NotImplementedError
      end

      def event(*args)
        raise NotImplementedError
      end

      def benckmark(metric, duration)
        raise NotImplementedError
      end

      def increment(metric, value = 1)
        raise NotImplementedError
      end
    end
  end
end
