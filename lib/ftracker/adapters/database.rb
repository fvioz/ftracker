# frozen_string_literal: true

module Ftracker
  module Adapters
    class Database < ::Ftracker::Adapter
      def report

      end

      def increment

      end

      def benckmark

      end

      private

      def save(event)
        ::Ftracker::Track.create(event)
      end
    end
  end
end
