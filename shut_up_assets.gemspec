lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'shut_up_assets'
  spec.version       = '2.0.1'
  spec.authors       = ['Dmitry Karpunin', 'Dmitry Vorotilin', 'Anton Semenov']
  spec.email         = %w(koderfunk@gmail.com d.vorotilin@gmail.com anton.estum@gmail.com)
  spec.homepage      = 'https://github.com/estum/shut_up_assets'
  spec.description   = 'Shuts up asset pipeline log in Rails 4+.'
  spec.summary       = 'Shut up Assets is a fresh fork of Quiet Assets, it turns off Rails asset pipeline log.'
  spec.licenses      = %w(MIT GPL)

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = %w(lib)
  spec.test_files    = Dir['test/**/*']

  spec.required_ruby_version = ">= 2.1"

  spec.add_dependency 'railties', '>= 4.2', '< 5.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'bundler'
end
