module BitstampAPI::LimitOrder
  extend self

  def open_orders
    BitstampAPI::Rest.post("/open_orders/")
  end

  def buy!(amount: nil, price: nil)
    BitstampAPI::Rest.post("/buy/", params: {
      amount: amount,
      price: price
    })
  end

  def sell!(amount: nil, price: nil)
    BitstampAPI::Rest.post("/sell/", params: {
      amount: amount,
      price: price
    })
  end

  def cancel!(id: nil)
    BitstampAPI::Rest.post("/cancel_order/", params: {
      id: id
    })
  end

end
