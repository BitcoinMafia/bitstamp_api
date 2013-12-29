module BitstampAPI::Withdrawal
  extend self

  def requests
    BitstampAPI::Rest.post("/withdrawal_requests/")
  end

  def bitcoin(amount: nil, address: address)
    BitstampAPI::Rest.post("/bitcoin_withdrawal/", params: {
      amount: amount,
      address: address
    })
  end

end
