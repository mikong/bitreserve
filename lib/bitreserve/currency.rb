module Bitreserve

  CURRENCIES = {
    btc: "BTC",
    cny: "CNY",
    eur: "EUR",
    gbp: "GBP",
    jpy: "JPY",
    usd: "USD",
    xau: "XAU"
  }

  def self.currencies
    CURRENCIES.values
  end

end
