module BitstampAPI

  class Account < BitstampAPI::Base

    def balance
      build_authentication_params()
      self.class.post("#{BitstampAPI::BASE}/balance")
    end

    def user_transactions(offset: 0, limit: 100, sort: "desc")
      build_authentication_params()
      self.class.post("#{BitstampAPI::BASE}/user_transactions", query: {
        offset: offset,
        limit: limit,
        sort: sort
      })
    end

    def open_orders
      build_authentication_params()
      self.class.post("#{BitstampAPI::BASE}/open_orders")
    end

    def cancel_order(id: nil)
      build_authentication_params()
      self.class.post("#{BitstampAPI::BASE}/cancel_order", query: {
        id: id
      })
    end

  end

end
