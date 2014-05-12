module FeatureForDummies
  module Configuration
    attr_accessor :list_path

    def configure
      yield self
    end

    def self.extended(base)
      base.set_default_configuration
    end

    def set_default_configuration
      self.list_path = 'config/feature_for_dummies.yml'
    end
  end
end
