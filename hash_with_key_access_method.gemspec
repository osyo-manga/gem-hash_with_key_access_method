# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash_with_key_access_method/version'

Gem::Specification.new do |spec|
  spec.name          = "hash_with_key_access_method"
  spec.version       = HashWithKeyAccessMethod::VERSION
  spec.authors       = ["manga_osyo"]
  spec.email         = ["manga.osyo@gmail.com"]
  spec.summary       = %q{hash with key access method.}
  spec.description   = %q{hash with key access method.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
