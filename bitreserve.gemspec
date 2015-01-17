# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitreserve/version'

Gem::Specification.new do |spec|
  spec.name          = "bitreserve"
  spec.version       = Bitreserve::VERSION
  spec.authors       = ["mikong"]
  spec.email         = ["michaelgalero@gmail.com"]
  spec.description   = 'Bitreserve Ruby SDK.'
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/mikong/bitreserve"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', ['>= 0.9', '< 0.10']
  spec.add_dependency 'multi_json', '~> 1.10'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
