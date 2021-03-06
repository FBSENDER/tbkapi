# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tbkapi/version'

Gem::Specification.new do |spec|
  spec.name          = "tbkapi"
  spec.version       = Tbkapi::VERSION
  spec.authors       = ["刘梦晨"]
  spec.email         = ["mengchen.liu@corp.elong.com"]
  spec.summary       = %q{淘宝客api ruby 调用}
  spec.description   = %q{淘宝客api ruby 调用}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
