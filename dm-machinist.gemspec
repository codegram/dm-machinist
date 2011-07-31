# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dm-machinist/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Josep Jaume"]
  gem.email         = ["josepjaume@gmail.com"]
  gem.description   = %q{dm-machinist is an adapter for machinist 2.0 to work with datamapper}
  gem.summary       = %q{dm-machinist is an adapter for machinist 2.0 to work with datamapper}
  gem.homepage      = 'http://github.com/codegram/dm-machinist'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "dm-machinist"
  gem.require_paths = ['lib']
  gem.version       = Dm::Machinist::VERSION

  gem.add_development_dependency "sqlite3"
  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "i18n"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rcov"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rdoc"
  gem.add_development_dependency "datamapper"
  gem.add_development_dependency "dm-sqlite-adapter"

  gem.add_runtime_dependency "machinist", ">= 2.0.0.beta2"
  gem.add_runtime_dependency "dm-core", ">= 1.1.0"
  gem.add_runtime_dependency "dm-transactions", ">= 1.1.0"
end
