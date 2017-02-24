# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'KP/utils/version'

Gem::Specification.new do |spec|
  spec.name          = "kp-utils"
  spec.version       = KP::Utils::VERSION
  spec.authors       = ["Justin Grubbs"]
  spec.email         = ["justin@kingandpartners.com"]

  spec.summary       = %q{commonly used rake tasks and other goodies we use all the time}
  spec.description   = %q{commonly used rake tasks and other goodies we use all the time}
  spec.homepage      = "https://github.com/kingandpartners/kp-utils"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
