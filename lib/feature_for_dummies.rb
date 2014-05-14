require "feature_for_dummies/configuration"
require "feature_for_dummies/feature"

module FeatureForDummies
  extend Configuration

  require 'rails'
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load "tasks/install.rake"
    end
    config.after_initialize do
      Feature = FeatureForDummies::Feature unless defined?(Feature)
    end
  end
end
