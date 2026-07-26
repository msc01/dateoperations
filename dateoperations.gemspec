# frozen_string_literal: true

require_relative 'lib/dateoperations/version'

Gem::Specification.new do |s|
  s.name        = 'dateoperations'
  s.version     = DateOperations::VERSION
  s.required_ruby_version = '>= 3.4.0'
  s.add_dependency 'holidays', '~> 11'
  s.summary     = 'Date Operations'
  s.description = 'Simple date operations to determine weekends, holidays, and esp. business days. Based on the Holidays Gem.'
  s.authors     = ['Michael Schwarze']
  s.email       = 'michael@schwarze-web.de'
  s.files       = ['lib/dateoperations.rb', 'lib/dateoperations/version.rb', 'README.md', 'LICENSE.txt']
  s.homepage    = 'https://github.com/msc01/dateoperations'
  s.license     = 'MIT'
  s.metadata['rubygems_mfa_required'] = 'true'
end
