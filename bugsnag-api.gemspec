# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bugsnag/api/version'

Gem::Specification.new do |spec|
  spec.name          = "bugsnag-api"
  spec.version       = Bugsnag::Api::VERSION
  spec.authors       = ["James Smith"]
  spec.email         = ["james@bugsnag.com"]
  spec.description   = %q{Bugsnag API toolkit for ruby}
  spec.summary       = %q{Bugsnag API toolkit for ruby}
  spec.homepage      = "https://github.com/bugsnag/bugsnag-api-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sawyer", '>= 0.6.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "faker"
  spec.add_development_dependency "vcr", "~> 2.9"
  spec.add_development_dependency "json"
end
