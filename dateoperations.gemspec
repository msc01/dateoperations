Gem::Specification.new do |s|
  s.name        = 'dateoperations'
  s.version     = '0.0.1'
  s.date        = '2016-06-16'
  s.add_runtime_dependency "holidays", ["= 4.3.0"]
  s.summary     = 'Date Operations'
  s.description = 'Different date operations, primarily around business days.'
  s.authors     = ['Michael Schwarze']
  s.email       = 'michael@schwarze-web.de'
  s.files       = ['lib/dateoperations.rb', 'README.md']
  s.homepage    = 'http://rubygems.org/gems/dateoperations'
  s.license     = 'MIT'
end
