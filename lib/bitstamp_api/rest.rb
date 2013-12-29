module BitstampAPI::Rest
  extend self

  BASE = "https://www.bitstamp.net/api"

  def post(endpoint, params: {})
    nonce = Time.now.to_i

    signature = HMAC::SHA256.hexdigest(
      BitstampAPI.api_secret,
      nonce.to_s + BitstampAPI.client_id + BitstampAPI.api_key
    ).upcase

    authentication_params = {
      key: BitstampAPI.api_key,
      nonce: nonce,
      signature: signature
    }

    params = params.merge(authentication_params)

    HTTParty.post("#{BASE}#{endpoint}", body: params.to_query)
  end

  def get(endpoint, params: {})
    HTTParty.get("#{BASE}#{endpoint}", query: params)
  end

end
