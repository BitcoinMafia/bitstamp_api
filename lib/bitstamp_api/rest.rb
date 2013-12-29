module BitstampAPI::Rest
  extend self

  BASE = "https://www.bitstamp.net/api"

  def post(endpoint, params: {})
    nonce = Time.now.to_i

    signature = HMAC::SHA256.hexdigest(
      BitstampAPI.api_secret,
      nonce + BitstampAPI.client_id + BitstampAPI.api_key
    ).upcase

    authentication_params = {
      key: BitstampAPI.api_key,
      signature: signature,
      nonce: nonce
    }

    params = params.merge(authentication_params)

    HTTParty.post("#{BASE}#{endpoint}", query: params)
  end

  def get(endpoint, params: {})
    HTTParty.get("#{BASE}#{endpoint}", query: params)
  end

end
