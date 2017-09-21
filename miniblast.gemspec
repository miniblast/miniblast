Gem::Specification.new do |s|
  s.name                    = "miniblast"
  s.version                 = "1.0.0"
  s.date                    = "2010-04-28"
  s.summary                 = "The Ruby framework that gives you a blast."
  s.description             = "The Ruby web development framework that gives you a blast forward in your website with Python."
  s.authors                 = ["Zack Pace"]
  s.email                   = "zack@zacklearns.com"
  s.files                   = ["README.MD","CHANGELOG"]
  s.adddependency()
  s.homepage                =
    "http://github.com/miniblast"
  s.license                 = "MIT"
  s.required_ruby_version   = ">= 2.4.2"
  s.platform                = Gem::Platform::RUBY
  s.add_dependency("supportlibrary")
  s.add_dependency("blast")
end
