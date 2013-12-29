require 'spec_helper'

describe BitstampAPI::Data do

  it "should return ticker" do
    ticker = BitstampAPI::Data.ticker
    expect(ticker["last"]).to_not eq(nil)
  end

end
