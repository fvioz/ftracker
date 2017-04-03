require 'tmpdir'
require 'spec_helper'
require 'generator_spec'
require 'generators/ftracker/install'

describe Ftracker::Install, type: :generator do
  destination Dir.tmpdir()

  before(:all) do
    prepare_destination
    run_generator
  end

  it 'creates a initializer file' do
    assert_file 'config/initializers/ftracker.rb', /Ftracker.configure/
  end
end
