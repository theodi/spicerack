# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spicerack/version'

Gem::Specification.new do |spec|
  spec.name          = 'spicerack'
  spec.version       = Spicerack::VERSION
  spec.authors       = ['pikesley']
  spec.email         = ['sam.pikesley@theodi.org']
  spec.summary       = %q{Ruby bindings for the Rackspace Cloud API.}
  spec.description   = %q{Ruby bindings for the Rackspace Cloud API.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty', '~> 0.13'
  spec.add_dependency 'dotenv', '~> 0.11'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'cucumber', '~> 1.3'
  spec.add_development_dependency 'guard', '~> 2.6'
  spec.add_development_dependency 'guard-rspec', '~> 4.2'
  spec.add_development_dependency 'guard-cucumber', '~> 1.4'
  spec.add_development_dependency 'terminal-notifier-guard', '~> 1.5'
  spec.add_development_dependency 'coveralls', '~> 0.7'
  spec.add_development_dependency 'webmock', '~> 1.18'
  spec.add_development_dependency 'vcr', '~> 2.9'
  spec.add_development_dependency 'timecop', '~> 0.7'
  spec.add_development_dependency 'badgerbadgerbadger', '~> 0.9'
  spec.add_development_dependency 'travis'
end
