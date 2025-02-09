# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gimme_wikidata/version"

Gem::Specification.new do |spec|
  spec.name          = "gimme_wikidata"
  spec.version       = GimmeWikidata::VERSION
  spec.authors       = ["Bradley Marques"]
  spec.email         = ["bradmarxmoosepi@gmail.com"]

  spec.summary       = %q{Search and get data from the Wikidata open knowledge base.}
  spec.description   = %q{GimmeWikidata is a Ruby gem that provides an interface to search, pull (and, in future, publish) data from Wikidata.  It provides a number of classes that encapsulate the data model of Wikidata.}
  spec.homepage      = "https://github.com/bradleymarques/gimme_wikidata"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '>= 11.1.2', '~> 11.1.2'
  spec.add_development_dependency 'minitest-display', '>= 0.3.1', '~> 0.3.1'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1.9', '>= 1.1.9'
  spec.add_development_dependency 'm', '>= 1.5.0', '~> 1.5.0'
  spec.add_development_dependency 'pry', '~> 0.10.3', '>= 0.10.3'
  spec.add_development_dependency 'mocha', '~> 1.1.0', '>= 1.1.0'
  spec.add_development_dependency 'dotenv', '~> 2.0.2', '>= 2.0.2'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.5.2', '>= 0.5.2'

  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday-http-cache'
  spec.add_dependency 'ruby-enum', '~> 0.5.0', '>= 0.5.0'
  spec.add_dependency 'colorize', '~> 0.7.7', '>= 0.7.7'
  spec.add_dependency 'json', '~> 2.6.0', '>= 2.6.0'
  spec.add_dependency 'carbon_date', '~> 0.1.2', '>= 0.1.2'
end
