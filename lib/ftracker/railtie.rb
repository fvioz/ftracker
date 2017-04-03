# frozen_string_literal: true

module Ftracker
  class Railtie < Rails::Railtie
    generators do
      require 'generators/ftracer/install'
    end
  end
end
