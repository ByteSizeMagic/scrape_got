require_relative 'lib/scrape_got/version'

Gem::Specification.new do |spec|
  spec.name          = "scrape_got"
  spec.version       = ScrapeGot::VERSION
  spec.authors       = ["ByteSizeMagic"]
  spec.email         = ["bytesizemagic@gmail.com"]

  spec.summary       = %q{Game of Thrones scraping CLI gem}
  spec.description   = %q{I scrape and I know things. Provides a CLI to run and find info about Game of Thrones.}
  spec.homepage      = "https://github.com/ByteSizeMagic/scrape_got"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ByteSizeMagic/scrape_got"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["scrape_got"]
  spec.require_paths = ["lib"]
  spec.add_development_dependency "pry"
  spec.add_development_dependency "gem-release"
end
