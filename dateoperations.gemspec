Gem::Specification.new do |s|
  s.name        = 'dateoperations'
  s.version     = '0.0.2'
  s.date        = '2016-06-21'
  s.add_runtime_dependency 'holidays', ['= 4.3.0']
  s.summary     = 'Date Operations'
  s.description = 'Simple date operations to determine weekends, holidays, and esp. business days. Based on the Holidays Gem.'
  s.authors     = ['Michael Schwarze']
  s.email       = 'michael@schwarze-web.de'
  s.files       = ['lib/dateoperations.rb', 'README.md', 'LICENSE.txt']
  s.homepage    = 'https://github.com/msc01/dateoperations'
  s.license     = 'MIT'
end
