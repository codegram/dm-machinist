# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dm-machinist/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Josep Jaume"]
  gem.email         = ["josepjaume@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ''

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
