module BitstampAPI

  class Base
    include HTTParty

    format :json

    # API Auth
    # default_params(
    #   api_key: ,
    #   client_id: ,
    #   signature:
    # )

    def initialize

    end

  end

end
