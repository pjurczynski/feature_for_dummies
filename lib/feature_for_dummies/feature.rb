module FeatureForDummies
  class Feature
    def self.on?(feature, env = Rails.env)
      list[env].fetch(feature)
    end

    def self.flags_path=(new_path)
      @@flags_path = new_path
    end

    private

    def self.list
      @@list ||= YAML.load(File.read(Rails.root.join(FeatureForDummies.list_path)))
    end
  end
end
