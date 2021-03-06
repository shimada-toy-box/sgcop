lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sgcop/version'

Gem::Specification.new do |spec|
  spec.name          = 'sgcop'
  spec.version       = Sgcop::VERSION
  spec.authors       = ['maedana']
  spec.email         = ['maedana@sonicgarden.jp']

  spec.summary       = 'SonicGarden標準コーディングスタイル'
  spec.description   = '各プロジェクトのrubocopのデフォルト設定とすることを目的としている'
  spec.homepage      = 'https://github.com/SonicGarden/sgcop'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'byebug'
  spec.add_dependency 'brakeman'
  spec.add_dependency 'brakeman_translate_checkstyle_format'
  spec.add_dependency 'haml_lint', '~> 0.35.0'
  spec.add_dependency 'rubocop', '~> 0.89.0'
  spec.add_dependency 'rubocop-performance', '~> 1.7.1'
  spec.add_dependency 'rubocop-rails', '~> 2.7.1'
  spec.add_dependency 'rubocop-rspec', '~> 1.42.0'
end
