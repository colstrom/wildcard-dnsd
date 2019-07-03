Gem::Specification.new do |gem|
  tag = `git describe --tags --abbrev=0`.chomp

  gem.name          = 'wildcard-dnsd'
  gem.homepage      = 'https://github.com/colstrom/wildcard-dnsd'
  gem.summary       = 'Wildcard DNS Daemon'

  gem.version       = "#{tag}"
  gem.licenses      = ['MIT']
  gem.authors       = ['Chris Olstrom']
  gem.email         = 'chris@olstrom.com'

  gem.cert_chain    = ['trust/certificates/colstrom.pem']
  gem.signing_key   = File.expand_path ENV.fetch 'GEM_SIGNING_KEY'

  gem.files         = `git ls-files -z`.split("\x0")
  gem.test_files    = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  gem.executables   = `git ls-files -z -- bin/*`.split("\x0").map { |f| File.basename(f) }

  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'rubydns', '~> 2.0', '>= 2.0.2' #  SPDX-License-Identifier:  MIT
end
