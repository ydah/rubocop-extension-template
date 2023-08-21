# Rubocop::Extension::Template

A RuboCop Extension Template.

# Usage

- [Use this template](https://github.com/new?template_name=rubocop-extension-template) to create a new extension
- Replace all occurrences of `your_extension` with your extension name
- Replace all occurrences of `YourExtension` with your extension class name
- Replace all occurrences of `Your Extension` with your extension name
- Remove descriptions and files related to the example cop `YourExtension/Example`
- You can now start writing your own cops
  - Run `bundle exec rake 'new_cop[YourExtension/YourCop]'` to generate a new cop
  - You write your cop in `lib/rubocop/cop/your_extension/your_cop.rb`

# License

This template is MIT licensed. [See the accompanying page](https://opensource.org/license/mit/) for the full text.

Copyright (c) 2023 Yudai TAKADA

______________________________________________________________________

# RuboCop Your Extension

## Installation

Just install the `rubocop-your_extension` gem

```bash
gem install rubocop-your_extension
```

or if you use bundler put this in your `Gemfile`

```
gem 'rubocop-your_extension', require: false
```

## Usage

You need to tell RuboCop to load the Your Extension extension. There are two
ways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```yaml
require: rubocop-your_extension
```

Alternatively, use the following array notation when specifying multiple extensions.

```yaml
require:
  - rubocop-other_extension
  - rubocop-your_extension
```

Now you can run `rubocop` and it will automatically load the RuboCop Your Extension
cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-your_extension
```

### Rake task

```ruby
RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-your_extension'
end
```

## The Cops

All cops are located under
[`lib/rubocop/cop/your_extension`](lib/rubocop/cop/your_extension), and contain
examples/documentation.

In your `.rubocop.yml`, you may treat the Your Extension cops just like any other
cop. For example:

```yaml
Your Extension/FilePath:
  Exclude:
    - spec/my_poorly_named_spec_file.rb
```

## Contributing

Checkout the [contribution guidelines](.github/CONTRIBUTING.md).
