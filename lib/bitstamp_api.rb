require 'active_support/core_ext'
require 'httparty'
require 'hmac-sha2'

require "bitstamp_api/rest"
require "bitstamp_api/data"
require "bitstamp_api/account"
require "bitstamp_api/limit_order"
require "bitstamp_api/withdrawal"
require "bitstamp_api/deposit"
require "bitstamp_api/ripple"

module BitstampAPI

  mattr_accessor :api_key
  mattr_accessor :api_secret
  mattr_accessor :client_id

  def self.configure
    yield(self)
  end

end
