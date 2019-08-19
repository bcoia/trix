lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trix/version'

Gem::Specification.new do |spec|
  spec.name          = 'trix-rails'
  spec.version       = Trix::VERSION
  spec.authors       = ['Kyle Fox', 'Jon Moss']
  spec.email         = ['kylefox@gmail.com', 'me@jonathanmoss.me']

  spec.summary       = 'A rich text editor for everyday writing'
  spec.description   = 'A rich text editor for everyday writing'
  spec.homepage      = 'https://github.com/kylefox/trix'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rails', '> 4.1', '< 6.1'

  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'formtastic', '~> 3.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-activemodel-mocks'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rubocop', '0.35.1'
  spec.add_development_dependency 'simple_form', '~> 4.0'
end
