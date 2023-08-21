# frozen_string_literal: true

require_relative "lib/rubocop/your_extension/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-your_extension"
  spec.version = Rubocop::YourExtension::VERSION
  spec.authors = ["author name"]
  spec.email = ["author@example.com"]

  spec.summary = "Yout extension summary."
  spec.description = "Your extension description."
  spec.homepage = "https://github.com/dummy/rubocop-your_extension"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/releases"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
