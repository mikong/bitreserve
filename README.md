# bitreserve

Bitreserve Ruby SDK

## Authentication

Bitreserve is an OAuth 2.0 compliant service... but they are still working on providing the Web Application Flow and Non-Web Application Flow. Meanwhile, they recommend using Basic Authentication or creating a Personal Access Token (PAT).

## Installation

Add this line to your application's Gemfile:

    gem 'bitreserve'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bitreserve

## Usage

    require 'bitreserve'
    api = Bitreserve::Client.new

    # All Tickers
    api.ticker

    # Tickers for currency
    api.ticker(currency: :usd)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
