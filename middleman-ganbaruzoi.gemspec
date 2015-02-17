# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-ganbaruzoi/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-ganbaruzoi"
  spec.version       = Middleman::Ganbaruzoi::VERSION
  spec.authors       = ["RYO NAKAE"]
  spec.email         = ["me@ryonakae.com"]
  spec.summary       = %q{Boilerplate of Middleman.}
  spec.description   = %q{Boilerplate of Middleman using Slim, Sass and CoffeeScript.}
  spec.homepage      = "https://github.com/ryonakae/middleman-ganbaruzoi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "middleman", ">= 3.3.8"
  spec.add_runtime_dependency "middleman-autoprefixer", ">= 2.4.3"
  spec.add_runtime_dependency "middleman-livereload", ">= 3.4.2"
  spec.add_runtime_dependency "middleman-deploy", ">= 1.0.0"
  spec.add_runtime_dependency "slim", ">= 2.0"
  spec.add_runtime_dependency "bourbon", ">= 4.2.0"
  spec.add_runtime_dependency "neat", ">= 1.7.1"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
end
