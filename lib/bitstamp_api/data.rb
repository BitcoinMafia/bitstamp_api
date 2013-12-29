module BitstampAPI::Data
  extend self

  def ticker
    json = HTTParty.get("#{BASE}/ticker")
    return JSON.parse(json)
  end

  def transactions(time: 1.hour)

  end

  def order_book(group: 1)

  end

  def conversion_rate(pair: :eur_usd)

  end

end
