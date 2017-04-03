# frozen_string_literal: true

require 'benchmark'
require 'active_support/concern'
require 'active_support/notifications'

module Ftracker
  module Instrumentable
    extend ActiveSupport::Concern

    module ClassMethods
      extend Forwardable

      DEFAULT_NAME = 'ftracker.benchmark'.freeze

      def_delegator ActiveSupport::Notifications, :instrument

      def benchmark(method_name, namespace = nil)
        benchmark_method_name = "#{method_name}_benchmark".to_sym
        method_name = method_name.to_sym

        send(:alias_method, benchmark_method_name, method_name)

        define_method(benchmark_method_name) do |*args, &block|
          if respond_to?(method_name)
            return_value = nil
            duration = 10
            duration = Benchmark.realtime do
              return_value = super(*args, &block)
            end
            namespace ||= "#{DEFAULT_NAME}_#{method_name}"
            instrument(namespace, duration: duration)
            return_value
          else
            raise "#{method_name} method does not exist."
          end
        end
      end
    end
  end
end
