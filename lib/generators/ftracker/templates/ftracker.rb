Ftracker.configure do |config|
  # Adapters :database, :statsd
  config.adapters = [:database]

  # Database storage default configuration
  config.database = {
    'ftracker' => :all
  }

  config.statsd = nil
end
