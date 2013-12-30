# BitstampAPI - work in progress

Ruby Wrapper around https://www.bitstamp.net/api/

Goal is the mirror the methods as close as possible, and then provide an abstraction layer on top of that.

# TODO

1. Improve docs
2. Release on RubyGems
3. Unit tests
4. Better abstraction layer and useful methods, e.g. ```BitstamAPI::MarketOrder.buy!(amount: 1)```

## Installation

Clone the repo

Add this line to your application's Gemfile:
```bash
$ gem build bitstamp_api.gemspec
$ gem install bitstamp_api-0.1.0.gem
```
And then execute:
```bash
$ bundle
```


## Usage

### Set keys
```ruby
BitstampAPI.configure do |config|
  config.api_key = ENV["BITSTAMP_API_KEY"]
  config.api_secret = ENV["BITSTAMP_API_SECRET"]
  config.client_id = ENV["BITSTAMP_CLIENT_ID"]
end
```

### Public Data

```ruby
BitstampAPI::Data.ticker
BitstampAPI::Data.transactions(time: "hour")
BitstampAPI::Data.order_book(group: 1)
BitstampAPI::Data.conversion_rate(pair: :eur_usd)
```

### Buy/Sell

```ruby
BitstampAPI::LimitOrder.buy!(amount: 0.001, price: 800)
BitstampAPI::LimitOrder.sell!(amount: 0.001, price: 800)
BitstampAPI::LimitOrder.cancel!(id: 123456)
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/bitstamp_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
