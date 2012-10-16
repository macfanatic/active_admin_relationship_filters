# -*- encoding: utf-8 -*-
require File.expand_path('../lib/active_admin_relationship_filters/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Brewer"]
  gem.email         = ["matt.brewer@me.com"]
  gem.description   = %q{Provides a few more filter options to ActiveAdmin allowing you to easily traverse relationships or filter on a HABTM}
  gem.summary       = %q{Provides a few more filter options to ActiveAdmin allowing you to easily traverse relationships or filter on a HABTM}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "active_admin_relationship_filters"
  gem.require_paths = ["lib"]
  gem.version       = ActiveAdminRelationshipFilters::VERSION
  
  gem.add_dependency "activeadmin", ">= 0.5"
  
end