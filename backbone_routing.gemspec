# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backbone_routing/version'

Gem::Specification.new do |gem|
  gem.name          = "backbone_routing"
  gem.version       = BackboneRouting::VERSION
  gem.authors       = ["Craig Wickesser"]
  gem.email         = ["craig@mindscratch.org"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'therubyrhino' # this ties it to JRuby, so make it work with rubyracer as well
end
