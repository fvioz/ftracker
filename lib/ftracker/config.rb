# frozen_string_literal: true

require 'active_support/core_ext/class/subclasses'

module Ftracker
  class Config
    def initialize
      ::Ftracker::Adapters::Base.subclasses.each do |adapter|
        adapter_name = adapter.class.name.demodulize
        config.send("#{adapter_name}=", nil)
      end
    end

    class << self
      def configure
        @config = Config.new
        yield(@config) if block_given?
        @config
      end

      def config
        @config || configure
      end
    end
  end
end
