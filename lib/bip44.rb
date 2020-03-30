require "bip44/version"
require "bip44/constants"

module Bip44
  class Error < StandardError; end

  class << self
    def get_hexa(currency)
      currency = currency.downcase

      currency_info = CONSTANT.find { |c| c[:currency] == currency }

      raise Error, "Can not found hexa from #{currency}" if currency_info.nil?

      currency_info[:constant]
    end
  end
end
