# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feature_for_dummies/version'

Gem::Specification.new do |spec|
  spec.name          = "feature_for_dummies"
  spec.version       = FeatureForDummies::VERSION
  spec.authors       = ["Piotr Jurczyński"]
  spec.email         = ["piotr.jurczynski@netguru.com"]
  spec.description   = %q{Simple feature flags implementation}
  spec.summary       = %q{With this gem using feature flags is as simple as writing yaml files}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rails"
end
