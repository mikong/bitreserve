require 'faraday'
require 'multi_json'

module Bitreserve

  class Client
    def initialize(options = {})
      opts = options.dup

      @version_path = "v#{VERSION.to_i}"
    end

    # Faraday connection object
    def connection
      @connection ||= Faraday.new url: 'https://api.bitreserve.org'
    end

    def ticker(options = {})
      opts = options.dup

      currency = options.delete(:currency)
      currency_path = CURRENCIES[currency.to_sym]  unless currency.nil?

      response = connection.get "/#{@version_path}/ticker/#{currency_path}"
      MultiJson.load(response.body)
    end

  end

end
