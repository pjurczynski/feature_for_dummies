require "fileutils"
require "find"

namespace :feature_for_dummies do
  desc "add feature flags yml template to config dir"
  task :install do |t, args|
    source_root = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
    FileUtils.cp("#{source_root}/templates/feature_for_dummies.yml", "#{Rails.root}/config")
  end
end
