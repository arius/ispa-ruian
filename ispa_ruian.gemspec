# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ispa_ruian/version'

Gem::Specification.new do |spec|
  spec.name          = "ispa_ruian"
  spec.version       = IspaRuian::VERSION
  spec.authors       = ["iQuest Jan Schejbal"]
  spec.email         = ["schejbal@iquest.cz"]

  spec.summary       = %q{Client for ISPAliance RUIAN}
  spec.description   = %q{Client for ISPAliance RUIAN}
  spec.homepage      = "http://github.com/iquest/ispa_ruian"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'curb', '~> 0.9'

  

  
end
