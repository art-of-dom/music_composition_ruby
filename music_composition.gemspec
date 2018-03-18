# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'music_composition/version'

Gem::Specification.new do |spec|
  spec.name          = 'music_composition'
  spec.version       = MusicComposition::VERSION
  spec.authors       = ['Dom Postorivo']
  spec.email         = ['depostorivo@gmail.com']

  spec.summary       = 'A music composition gem focused on theory, notation, and performance.'
  spec.description   = 'The creation of music takes form in many differnt ways and the goal of this gem is to provide a set of tools for whatever angle you aproch it while offering many other you can experiment with. '
  spec.homepage      = 'https://github.com/dpostorivo'
  spec.licenses      = ['MIT']
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'fuubar'
  spec.add_development_dependency 'inch', '~> 0.7.1'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rdoc'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'simplecov', '~> 0.12'

  spec.add_dependency 'ruby-enum', '~> 0.5'
end
