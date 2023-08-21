# frozen_string_literal: true

require_relative "rubocop/your_extension/inject"
require_relative "rubocop/your_extension/version"

module RuboCop
  module YourExtension
    PROJECT_ROOT = ::Pathname.new(__dir__).parent.expand_path.freeze
    CONFIG_DEFAULT = PROJECT_ROOT.join("config", "default.yml").freeze
    CONFIG = ::YAML.safe_load(CONFIG_DEFAULT.read).freeze
    private_constant(:CONFIG_DEFAULT, :PROJECT_ROOT)
  end
end

RuboCop::YourExtension::Inject.defaults!
require_relative "rubocop/cop/your_extension/example"
