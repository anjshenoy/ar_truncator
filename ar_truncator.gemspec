# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ar_truncator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Anjali Shenoy"]
  gem.email         = ["anjshenoy@gmail.com"]
  gem.description   = %q{Adds a truncate helper to AR}
  gem.summary       = %q{Adds a truncate helper to AR}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ar_truncator"
  gem.require_paths = ["lib"]
  gem.version       = ArTruncator::VERSION

  gem.add_dependency "mysql2"
  gem.add_dependency "activerecord"
end
