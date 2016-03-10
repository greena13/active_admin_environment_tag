# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_admin_environment_tag/version'

Gem::Specification.new do |spec|
  spec.name          = "active_admin_environment_tag"
  spec.version       = ActiveAdminEnvironmentTag::VERSION
  spec.authors       = ["Aleck Greenham"]
  spec.email         = ["greenhama13@gmail.com"]
  spec.summary       = %q{ActiveAdmin plugin that provides rails environment-specific tags on the admin panel}
  spec.description   = %q{An ActiveAdmin plugin that provides tags on the admin panel to indicate which environment your rails project is running in}
  spec.homepage      = "https://github.com/greena13/active_admin_environment_tag"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0'
end
