# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deflect/version'

Gem::Specification.new do |spec|
  spec.name          = "deflect"
  spec.version       = Deflect::VERSION
  spec.authors       = ["James Dabbs"]
  spec.email         = ["jamesdabbs@gmail.com"]
  spec.summary       = %q{Automatically fix mis-pluralized model names}
  spec.description   = spec.summary
  spec.homepage      = "http://github.com/jamesdabbs/deflect"
  spec.license       = "WTFPL"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
