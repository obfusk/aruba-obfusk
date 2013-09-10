require File.expand_path('../lib/aruba/obfusk/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'aruba-obfusk'
  s.homepage    = 'https://github.com/obfusk/aruba-obfusk'
  s.summary     = 'aruba extensions'

  s.description = <<-END.gsub(/^ {4}/, '')
    aruba extensions

    ...
  END

  s.version     = Aruba::Obfusk::VERSION
  s.date        = Aruba::Obfusk::DATE

  s.authors     = [ 'Felix C. Stegerman' ]
  s.email       = %w{ flx@obfusk.net }

  s.licenses    = %w{ GPLv2 EPLv1 }

  s.files       = %w{ .yardopts README.md Rakefile } \
                + %w{ aruba-obfusk.gemspec } \
                + Dir['{lib,spec}/**/*.rb']

  s.add_runtime_dependency 'aruba'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

  s.required_ruby_version = '>= 1.9.1'
end
