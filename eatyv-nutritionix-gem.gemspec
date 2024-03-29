
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "eatyv/nutritionix/gem/version"

Gem::Specification.new do |spec|
  spec.name          = "eatyv-nutritionix-gem"
  spec.version       = Eatyv::Nutritionix::Gem::VERSION
  spec.authors       = ["Salanoid"]
  spec.email         = ["salanoid@gmail.com"]

  spec.summary       = %q{Gem that allows you to interact with nutritionix api in ruby.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/Salanoid/eatyv-nutritionix-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "httparty", "~> 0.13.7"
end
