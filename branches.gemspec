# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'branches/version'

Gem::Specification.new do |spec|
  spec.name          = "branches"
  spec.version       = Branches::VERSION
  spec.authors       = ["Blake Erickson"]
  spec.email         = ["o.blakeerickson@gmail.com"]
  spec.summary       = %q{A command-line tool to show a list of git branches by date}
  spec.description   = %q{A command-line tool to show a list of git branches by date}
  spec.homepage      = "https://github.com/oblakeerickson/branches"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["branches"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
