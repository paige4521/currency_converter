#require_relative "currency.rb" #!/usr/bin/env ruby -wKU

class CurrencyConverter

  def initialize (currency_hash = {})
   @currency_hash = currency_hash
   puts @currency_hash
 end


end

 def convert (currency, currency_code)
   if @currency_hash.has_key?(currency_code)
     # do the convesion
   else
     raise UnknownCurrencyCodeError
   end
 end

 
