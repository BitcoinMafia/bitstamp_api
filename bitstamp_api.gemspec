# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitstamp_api/version'

Gem::Specification.new do |spec|
  spec.name          = "bitstamp_api"
  spec.version       = BitstampAPI::VERSION
  spec.authors       = ["Scott Li"]
  spec.email         = ["scottli0101@gmail.com"]
  spec.summary       = %q{Bitstamp API Ruby Wrapper}
  spec.description   = %q{Mirros Bitstamp API methods}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 2.13.0"

  spec.add_dependency 'httparty', '~> 0.12.0'
  spec.add_dependency "ruby-hmac", '~> 0.4.0'
  spec.add_dependency "activesupport", '~> 4.0.2'
end
