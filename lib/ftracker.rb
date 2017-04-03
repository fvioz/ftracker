# frozen_string_literal: true

require 'active_support'
require 'ftracker/version'
require 'ftracker/proxy'
require 'ftracker/subscriber'
require 'ftracker/adapter'
require 'ftracker/config'
require 'ftracker/railtie' if defined?(Rails::Railtie)

module Ftracker
  extend ActiveSupport::Autoload

  module Adapters
    autoload :Database,     'ftracker/adapters/database'
    autoload :Kissmetrics,  'ftracker/adapters/kissmetrics'
    autoload :Mixpanel,     'ftracker/adapters/mixpanel'
    autoload :Statsd,       'ftracker/adapters/statsd'
  end

  module Subscribers
    # autoload :Base,         'ftracker/subscribers/base'
    # autoload :ActionMailer
    # autoload :ActionView
    # autoload :ActiveController
    # autoload :ActiveJob
    # autoload :ActiveRecord
    # autoload :ActiveSupport
  end

  # autoload :Instrumentable
end

Ftracker.eager_load!
