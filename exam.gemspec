# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exam/version'

Gem::Specification.new do |spec|
  spec.name          = "exam"
  spec.version       = Exam::VERSION
  spec.authors       = ["David Fernando Redondo Durand"]
  spec.email         = ["alu0100851700@ull.edu.es"]
  spec.description   = %q{Gema para la creacion de un examen de tipo test}
  spec.summary       = %q{Gem summary}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'

  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"

end
