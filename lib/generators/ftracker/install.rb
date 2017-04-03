require 'rails/generators/base'

module Ftracker
  class Install < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer
      template 'ftracker.rb', 'config/initializers/ftracker.rb'
    end
  end
end
