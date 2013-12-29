module BitstampAPI

  class Account < BitstampAPI::Net

    def balance
      self.class.get("#{BitstampAPI::BASE}/balance")
    end

    def user_transactions(offset: 0, limit: 100, sort: "desc")

    end

    def open_orders

    end

    def cancel_order(id: nil)

    end

  end

end
