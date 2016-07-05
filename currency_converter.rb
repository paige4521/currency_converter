require_relative 'error'
require_relative 'currency.rb'

class CurrencyConverter

  # attr_reader :currency_hash

  def initialize (currency_hash = {})
    @currency_hash = currency_hash
  end


  # this method takes in the currency code (eg USD)
  # and gives back the currency sign for that code (eg $)
  # we need this to be able to make a new currency object when
  # the conversion takes place.
  def currency_code_to_sign (currency_code)
    if currency_code == :USD
      return "$"
    elsif currency_code == :EUR
      return "€"
    end
  end


  def convert (currency, currency_code)
    if @currency_hash.has_key?(currency_code) #you may call this method on any hash

      converted_amount = currency.amount * (@currency_hash[currency_code]/@currency_hash[currency.currency_symb])
      new_currency_sign = currency_code_to_sign(currency_code)
      converted_currency = Currency.new(new_currency_sign, converted_amount)
    else
      raise UnknownCurrencyCodeError
    end
  end

end

#make ten_dollars
ten_dollars = Currency.new("$10")

#intiliaze the converter object
converter = CurrencyConverter.new({USD:1.00, EUR:0.90})

#make the converter convert dollars to euros and return back a Currency obj
ten_dollars_to_euros = converter.convert(ten_dollars, :EUR)


#ten_euros = Currency.new("€", 10)
# puts "#{ten_euros.amount} #{ten_euros.currency_symb}"

#ten_euros_to_dollars = converter.convert(ten_euros, :USD)

#puts ten_euros_to_dollars.amount
