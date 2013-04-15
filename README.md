# CrxAppid

Calculate Chrome extension appid from pem

## Installation

Add this line to your application's Gemfile:

    gem 'crx_appid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install crx_appid

## Usage

```ruby
pem = open("extension.pem").read
CrxAppid.calculate(pem)

CrxAppid.calculate_from_file("extension.pem")
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
