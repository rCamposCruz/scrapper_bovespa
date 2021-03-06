
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "scrapper_bovespa/version"

Gem::Specification.new do |spec|
  spec.name          = "scrapper_bovespa"
  spec.version       = ScrapperBovespa::VERSION
  spec.authors       = ["Rafael Campos Ferreira da Cruz"]
  spec.email         = ["rafaelcpcruz@hotmail.com"]

  spec.summary       = %q{A gem to easely extract company and stock informatiion from BOVESPA.}
  spec.description   = %q{Through scrapping and standard get/post calls we enable simple integractions with websites that host companys information for BOVESPA and enable access to it's webservice.

For the webservice you will need a registry, which can be done in this website http://blog.cedrotech.com/como-integrar-o-market-data-bmfbovespa-via-servicos-rest-xml-ou-json/ .
}
  spec.homepage      = "https://github.com/rCamposCruz/scrapper_bovespa"
  spec.licenses    = ['MIT']


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", "~> 1.8"
  spec.add_development_dependency "json", "~> 1.8"
end
