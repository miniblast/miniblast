# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |gem|
  gem.name          = "miniblast"
  gem.version       = Miniblast::VERSION
  gem.authors       = ["Miniblast- Zack"]
  gem.email         = ["zack@zacklearns.com"]
  gem.description   = "A full stack Rack framework for Ruby"
  gem.summary       = "A Rack framework for Ruby."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "rack"
  gem.add_runtime_dependency "erubis"
  gem.add_development_dependency "rack-test"
  gem.add_runtime_dependency "multi_json"
  gem.add_runtime_dependency "sqlite3"
end
