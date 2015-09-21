# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/gravatar/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-gravatar"
  spec.version       = Jekyll::Gravatar::VERSION
  spec.authors       = ["Albert Llop"]
  spec.email         = ["mrsimo@gmail.com"]

  spec.summary       = %q{Easily add gravatars to your jekyll blog}
  spec.homepage      = "https://github.com/mrsimo/jekyll-gravatar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
