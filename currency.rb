require_relative 'error.rb'

class Currency
   #currency_one.amount
  attr_reader :amount, :currency_symb


  def initialize (currency_symb = " ", amount)
     if currency_symb != " "
      @amount = amount
      @currency_symb = currency_symb
      currency_symb_check
    else
      @currency_symb = amount[0]
      @amount = amount[1..-1].to_i #amount[0]
      currency_symb_check
    end

  end

  def currency_symb_check
    if @currency_symb == "$"
       @currency_symb = :USD
    elsif @currency_symb == "€"
      @currency_symb = :EUR
    end
  end

  def ==(is_equal)
    if @amount == is_equal.amount && @currency_symb == is_equal.currency_symb
      true
    else
     false
    end
  end

  def Different_Current_Code
    raise UnknownCurrencyCodeError
  end

#ADDITION.  We are saying use this method to add the amount you pass to the amount prevoiusly passed and/or that is held
#memory as amount...see initialize when we say @amount = amount http://strugglingwithruby.blogspot.com/2010/04/operator-overloading.html
  def +(currency_object)
    if  @currency_symb == currency_object.currency_symb
        Currency.new(@amount +currency_object.amount)
    else
        raise UnknownCurrencyCodeError
  end
    #puts "The value of the new curent currecy is #{@amount}." #This will print the new amount.
    #puts "The value of the currency_object's amout is #{currency_object.amount}"
end

  def -(currency_object) #SUBTRACTION - We are saying use this method to
                          #add the amount you pass to the amount prevoiusly passed and/or that is held
                            #memory as amount...see initialize when we say @amount = amount
                            #http://strugglingwithruby.blogspot.com/2010/04/operator-overloading.html

    if  @currency_symb == currency_object.currency_symb
        Currency.new(@amount -currency_object.amount)
      else
        raise UnknownCurrencyCodeError
      end
  end

#MULTIPLICATION  We are saying use this method to add the amount you pass to the amount prevoiusly passed and/or that is held
#memory as amount...see initialize when we say @amount = amount
  def *(currency_object)
    if  @currency_symb == currency_object.currency_symb
         Currency.new(@amount *currency_object.amount)
      elsif
        @currency_symb == currency_object.currency_symb
        Currency.new(@amount *currency_object.amount)
      else
        raise UnknownCurrencyCodeError
      end
  end

end

 # currency_one = Currency.new("$", 532)
 # puts currency_one.amount
 # puts currency_one.currency_symb
