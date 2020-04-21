require "yaml"

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

    def get_currency(hexa)
      currency_info = CONSTANT.find { |c| c[:constant] == hexa }

      raise Error, "Can not found currency from #{hexa}" if currency_info.nil?

      currency_info[:currency]
    end

    def include_currency?(currency)
      currency = currency.downcase

      CONSTANT.map { |c| c[:currency]}.include?(currency)
    end
  end
end
