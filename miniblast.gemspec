Gem::Specification.new do |s|
  s.name        = 'miniblast'
  s.version     = '1.2.0'
  s.date        = '2017-09-23'
  s.summary     = "Rack based web framework."
  s.description = "The Rack based web framework that gives you a blast!"
  s.authors     = ["Zack Pace"]
  s.email       = 'zack@zacklearns.com'
  s.files       = ["lib/miniblast.rb"]
  s.homepage    =
    'http://github.com/miniblast'
  s.license       = 'MIT'
  gem.add_runtime_dependency "rack"
  gem.add_runtime_dependency "rack"
  gem.add_development_dependency "rack-test"
  gem.add_development_dependency "test-unit"
end
