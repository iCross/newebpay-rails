
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "newebpay/version"

Gem::Specification.new do |spec|
  spec.name          = "newebpay-rails"
  spec.version       = Newebpay::VERSION
  spec.authors       = ["鍾劭方（Cellvin Chung）"]
  spec.email         = ["cellvinchung@gmail.com"]

  spec.summary       = %q{newebpay gem for ruby on rails (藍新金流)}
  spec.description   = %q{Integrate Rails with newebpay (藍新金流).}
  spec.homepage      = "https://github.com/cellvinchung/newebpay-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/cellvinchung/newebpay-rails"
    spec.metadata["changelog_uri"] = "https://github.com/cellvinchung/newebpay-rails/wiki/Change-Log"
    spec.metadata["wiki_uri"] = "https://github.com/cellvinchung/newebpay-rails/wiki"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.5"
  spec.add_dependency "http", ">= 4.1"
  spec.add_dependency "rails", ">= 5.0", "< 7"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "poltergeist"
  spec.add_development_dependency "appraisal"
  spec.add_development_dependency "ngrok-rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
