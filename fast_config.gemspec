Gem::Specification.new do |s|
  s.name        = 'fast_config'
  s.version     = '0.0.4'
  s.date        = '2019-04-17'
  s.summary     = "FAST config files"
  s.description = "Add default config files to projects just by including the gem."
  s.authors     = ["Chris Reister"]
  s.email       = 'chris@chrisreister.com'
  s.files       = ["lib/fast_config.rb"]
  s.homepage    = 'https://github.com/chrisftw/fast_config'
  s.license     = 'MIT'
  
  s.add_development_dependency 'minitest', '~> 3.0'
end
