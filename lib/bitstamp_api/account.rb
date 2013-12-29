module BitstampAPI::Account
  extend self

  def balance
    BitstampAPI::Rest.post("/balance")
  end

  def user_transactions(offset: 0, limit: 100, sort: "desc")
    BitstampAPI::Rest.post("/user_transactions", params: {
      offset: offset,
      limit: limit,
      sort: sort
    })
  end

  def open_orders
    BitstampAPI::Rest.post("/open_orders")
  end

  def cancel_order(id: nil)
    BitstampAPI::Rest.post("/open_orders", params: {
      id: id
    })
  end

end
