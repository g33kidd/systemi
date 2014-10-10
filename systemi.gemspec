# -*- encoding: utf-8 -*-

require File.expand_path('../lib/systemi/version', __FILE__)

Gem::Specification.new do |gem|

  gem.name          = "systemi"
  gem.version       = Systemi::VERSION
  gem.summary       = "Get current or remote system information."
  gem.description   = "Allows you to get system info such as CPU Usage, Filesystem Stats, and more."
  gem.license       = "MIT"
  gem.authors       = ["Joshua Kidd"]
  gem.email         = "josh@folsomcreative.com"
  gem.homepage      = "http://github.com/g33kidd"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{|f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

end