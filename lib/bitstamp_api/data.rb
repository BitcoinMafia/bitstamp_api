module BitstampAPI::Data
  extend self

  def ticker
    BitstampAPI::Rest.get("/ticker/")
  end

  def transactions(time: "minute")
    BitstampAPI::Rest.get("/transactions/", params: {
      time: time
    })
  end

  # params: ?group 0 is false, 1 is true
  def order_book(group: 1)
    BitstampAPI::Rest.get("/order_book/", params: {
      group: group
    })
  end

  def conversion_rate(pair: :eur_usd)
    BitstampAPI::Rest.get("/conversion_rate/", params: {
      pair: pair
    })
  end

end
