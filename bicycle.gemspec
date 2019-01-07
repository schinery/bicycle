# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bicycle/version"

Gem::Specification.new do |spec|
  spec.name          = "bicycle"
  spec.version       = Bicycle::VERSION
  spec.authors       = ["Stuart Chinery"]
  spec.email         = ["stuart.chinery@gmail.com"]

  spec.summary       = "A convenience gem for cycling through a set of values"
  spec.description   = "A convenience gem for cycling through a set of values, ported from the 'cycle' " \
                       "functionality found in Rails. It is independent of which framework you use so " \
                       "will run in Sinatra, Padrino or straight up Ruby itself."
  spec.homepage      = "https://github.com/schinery/bicycle"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-fail-fast", "~> 0.1"
  spec.add_development_dependency "minitest-macos-notification", "~> 0"
  spec.add_development_dependency "minitest-reporters", "~> 1.3"
  spec.add_development_dependency "rake", "~> 12.0"
end
