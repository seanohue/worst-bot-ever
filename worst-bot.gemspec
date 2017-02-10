# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'worst/bot/version'

Gem::Specification.new do |spec|
  spec.name          = "worst-bot"
  spec.version       = Worst::Bot::VERSION
  spec.authors       = ["Sean O'Donohue"]
  spec.email         = ["sean.odonohue@detroitlabs.com"]

  spec.summary       = "A Twitter bot scraping Reddit and Twitter."
  spec.description   = "A configurable Markov bot that scrapes from Twitter and Reddit to produce garbage to post on Twitter."
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",      "~> 1.13"
  spec.add_development_dependency "rake",         "~> 10.0"
  spec.add_development_dependency "rspec",        "~> 3.0"
  spec.add_runtime_dependency     "marky_markov", "~> 0.3.5"
  spec.add_runtime_dependency     "redd",         "~> 0.7.10"
  spec.add_runtime_dependency     "twitter",      "~> 6.1.0"

end
