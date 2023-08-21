# frozen_string_literal: true

desc "Generate a new cop with a template"
task :new_cop, [:cop] do |_task, args|
  require "rubocop"

  cop_name = args.fetch(:cop) do
    warn "usage: bundle exec rake 'new_cop[YourExtension/Name]'"
    exit!
  end

  generator = RuboCop::Cop::Generator.new(cop_name)

  generator.write_source
  generator.write_spec
  generator.inject_require(root_file_path: "lib/rubocop-your_extension.rb")
  generator.inject_config(config_file_path: "config/default.yml")

  puts generator.todo
end
