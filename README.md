# KP::Utils

A collection of rake tasks and other goodies (to come soon) that we commone use at King & Partners

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kp-utils'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kp-utils

## Usage

Create an initializer. **config/initializers/kp_utils.rb**
```ruby
KP::Utils.configure do |config|

  config.github = {
    repo_owner:   'owner',
    repo_name:    'repo',
    deploy_token: '****************************************'
  }

end
```

## Github Releaser

```
$ rake github:create_release
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/KP-utils.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

