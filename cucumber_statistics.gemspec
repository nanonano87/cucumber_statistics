# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumber_statistics/version'

Gem::Specification.new do |spec|
  spec.name        = 'nanonano87-cucumber_statistics'
  spec.version     = CucumberStatistics::VERSION
  spec.authors     = ['Weimun Ding']
  spec.email       = ['ding.wm7@gmail.com']
  spec.summary     = <<-TEXT
    An cucumber formatter that will gather statistics and generate a single page showing step time metrics.
  TEXT
  spec.description = <<-TEXT
    Want to know what is slowing down your build?
  TEXT


  spec.homepage    = 'https://github.com/nanonano87/cucumber_statistics'
  spec.license = 'MIT'

  spec.files = `git ls-files`.split($/).reject { |f| f =~ /^samples\// }
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # development
  #spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 2.14.1'

  # runtime
  spec.add_runtime_dependency 'haml'
  spec.add_runtime_dependency 'tilt'
  spec.add_runtime_dependency 'cucumber', '>= 2.1.0'
  spec.add_runtime_dependency 'virtus'
end