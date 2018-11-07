# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gema/version"

Gem::Specification.new do |spec|
  spec.name          = "gema"
  spec.version       = Gema::VERSION
  spec.authors       = ["alu0100799101"]
  spec.email         = ["wadrycanario1993@gmail.com"]

  spec.summary       = %q{Practica6 Desarrollo Dirigido Por Pruebas TDD}
  spec.description   = %q{Desarrollo Pruebas TDD donde tendremos en cuenta etiquetas nutricionales}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1819/tdd-alu0100799101.git"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/ULL-ESIT-LPP-1819/tdd-alu0100799101.git"
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

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
