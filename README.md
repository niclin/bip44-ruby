# Bip44 Ruby

This Ruby gem provides BIP44 coin constants as found here: https://github.com/satoshilabs/slips/blob/master/slip-0044.md

```ruby
gem 'bip44-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bip44

## Usage

### Get hexa

```ruby
require "bip44"

Bip44.get_hexa("btc")

# => "0x80000000"
```

### Parse hexa

```ruby
require "bip44"

Bip44.get_currency("0x80000000")

# => "btc"
```

### Check currency

```ruby
require "bip44"

Bip44.include_currency?("eth")
# => true

Bip44.include_currency?("fake_currency")
# => false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/niclin/bip44-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
