module BitstampAPI::Ripple
  extend self

  def withdraw(amount: nil, address: nil, currency: nil)
    BitstampAPI::Rest.post("/ripple_withdrawal/", params: {
      amount: amount,
      address: address,
      currency: currency
    })
  end

  def address
    BitstampAPI::Rest.post("/ripple_address/")
  end
end
