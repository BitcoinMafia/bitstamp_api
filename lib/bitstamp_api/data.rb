module BitstampAPI::Data
  extend self

  def ticker
    HTTParty.get("#{BitstampAPI::BASE}/ticker")
  end

  def transactions(time: "minute")
    HTTParty.get("#{BitstampAPI::BASE}/transactions", query: {
      time: time
    })
  end

  # params: ?group 0 is false, 1 is true
  def order_book(group: 1)
    HTTParty.get("#{BitstampAPI::BASE}/order_book", query: {
      group: group
    })
  end

  # only support eur_usd
  def conversion_rate(pair: :eur_usd)
    HTTParty.get("#{BitstampAPI::BASE}/#{pair}")
  end

end
