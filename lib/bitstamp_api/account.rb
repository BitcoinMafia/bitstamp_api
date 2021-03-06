module BitstampAPI::Account
  extend self

  def balance
    BitstampAPI::Rest.post("/balance/")
  end

  def user_transactions(offset: 0, limit: 100, sort: "desc")
    BitstampAPI::Rest.post("/user_transactions/", params: {
      offset: offset,
      limit: limit,
      sort: sort
    })
  end

end
