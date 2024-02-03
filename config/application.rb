require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BudgetApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Database Configuration
    config.database_configuration_file = File.join(Rails.root, 'config', 'database.yml')
    
    # Assets Configuration
    config.assets.enabled = true
    config.assets.version = '1.0'

    # Credentials Configuration
    config.credentials = Rails.application.credentials

    # Time Zone Configuration
    config.time_zone = "Eastern Time (US & Canada)"

    # Eager Load Paths
    # config.eager_load_paths << Rails.root.join("extras")

    # Rack Middleware
    # config.middleware.use MyMiddleware
  end
end
