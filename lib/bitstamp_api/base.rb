module BitstampAPI

  class Base
    include HTTParty

    format :json


    # Need to rebuild auth every call because of unique incr. nonce
    def build_authentication_params
      nonce = Time.now.to_i

      signature = HMAC::SHA256.hexdigest(
        BitstampAPI.api_secret,
        nonce + BitstampAPI.client_id + BitstampAPI.api_key
      ).upcase

      self.class.default_params(
        key: BitstampAPI.api_key,
        signature: signature,
        nonce: nonce
      )
    end

  end

end
