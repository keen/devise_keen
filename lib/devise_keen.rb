unless defined?(Devise)
  require 'devise'
end
require 'devise_keen'

Devise.add_module :keen_metrics, :model => 'devise_keen/model'

module DeviseKeen
  class Engine < Rails::Engine
  end
end

module Devise
  # Public: The Keen project id to use when recording events.
  # Set keen_project_id in the Devise configuration file (config/initializers/devise.rb)
  #
  #   Devise.keen_project_id = "YOURPROJECTID"
  mattr_accessor :keen_project_id

  # Public: The Keen Write Key for your project. Used to record events.
  # Set keen_write_key in the Devise configuration file (config/initializers/devise.rb)
  #
  #   Devise.keen_write_key = "YOUR_WRITE_KEY"
  mattr_accessor :keen_write_key

  # Public: The name of the collection to use when recording events.
  # Set keen_collection in the Devise configuration file (config/initializers/devise.rb)
  #
  #   Devise.keen_collection = "devise-keen"
  mattr_accessor :keen_collection
  @@keen_collection = "devise-keen"
end
