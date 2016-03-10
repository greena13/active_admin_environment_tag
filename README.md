# ActiveAdminEnvironmentTag

An ActiveAdmin plugin that provides tags on the admin panel to indicate which environment your rails project is running in

## Installation

Add this line to your application's Gemfile:

    gem 'active_admin_environment_tag'

And then execute:

    $ bundle
    
Include the active admin environment tag stylesheet in the `active_admin.rb` initializer:

    config.register_stylesheet 'active_admin_environment_tag'
    
## Configuration

ActiveAdminEnvironmentTag is configured using an initializer:

```ruby
ActiveAdminEnvironmentTag.configure do |config|
  config.environment_colors = {
      staging: '#FCBF34'
  }
end
```

### environment_colors

By default, ActiveAdminEnvironmentTag uses the following colors for each of basic environments:

```ruby
development: '#91CA4B',
production: '#fc1f27',
default: '#c9d6e3'
```

You can override these colors (including the default) or specify other environments using the `environment_colors` option to provide a hash of environment names and colors. If ActiveAdminEnvironmentTag is run in a Rails environment that does not have a color associated with it, `default` is used.

## Contributing

1. Fork it ( https://github.com/greena13/active_admin_environment_tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
