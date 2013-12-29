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

    # ensure / at end of endpoint
    response = HTTParty.post("#{BASE}#{endpoint}", body: params.to_query)

    raise Error unless response.code === 200
    return response
  end

  def get(endpoint, params: {})
    HTTParty.get("#{BASE}#{endpoint}", query: params)

    raise Error unless response.code === 200
    return response
  end

end
