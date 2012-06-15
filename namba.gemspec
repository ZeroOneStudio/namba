# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "namba/version"

Gem::Specification.new do |gem|
  gem.authors       = ["Sergey Kishenin"]
  gem.email         = ["sergey.kishenin@gmail.com"]
  gem.description   = %q{Ruby wrapper for Namba API}
  gem.summary       = %q{Ruby wrapper for Namba API}
  gem.homepage      = "https://github.com/ZeroOneStudio/namba"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "namba"
  gem.require_paths = ["lib"]
  gem.version       = Namba::VERSION

	gem.add_runtime_dependency 'multi_json'

  gem.add_development_dependency 'rspec', '~> 2.7.0'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'rack-test'
end
