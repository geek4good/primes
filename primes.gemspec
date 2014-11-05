# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primes/version'

Gem::Specification.new do |spec|
  spec.name          = "primes"
  spec.version       = Primes::VERSION
  spec.authors       = ["Lucas Mbiwe"]
  spec.email         = ["lucas@geek4good.com"]
  spec.summary       = %q{A small tool to work with prime numbers}
  spec.description   = %q{Do some stuff with prime numbers, e.g. getting the nth prime number or printing a multiplication table.}
  spec.homepage      = "https://github.com/geek4good/primes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
