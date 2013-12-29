module BitstampAPI::Deposit
  extend self

  def address
    BitstampAPI::Rest.post("/bitcoin_deposit_address/")
  end

  def unconfirmed
    BitstampAPI::Rest.post("/unconfirmed_btc/")
  end
end
