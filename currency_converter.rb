#require_relative "currency.rb" #!/usr/bin/env ruby -wKU

class CurrencyConverter

  def initialize (currency_hash = {})
   @currency_hash = currency_hash
   puts @currency_hash
 end


end

texting = CurrencyConverter.new({"USD": 1, "EUR": 2})
janicejackson = CurrencyConverter.new({USD:10, "EUR": 5})
