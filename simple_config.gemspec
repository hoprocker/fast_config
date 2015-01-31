Gem::Specification.new do |s|
  s.name        = 'simple_config'
  s.version     = '0.0.1'
  s.date        = '2015-01-23'
  s.summary     = "QUICK config files"
  s.description = "Add default config files to projects just by including the gem."
  s.authors     = ["Chris Reister"]
  s.email       = 'chris@chrisreister.com'
  s.files       = ["lib/simple_config.rb"]
  s.homepage    = 'https://github.com/chrisftw/simple_config'
  s.license     = 'MIT'
  
  s.add_development_dependency 'minitest', '~> 3.0'
end
