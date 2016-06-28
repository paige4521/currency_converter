require_relative 'error.rb'

class Currency
   #currency_one.amount
  attr_reader :amount, :currency_symb

  def initialize (currency_symb = "", amount) #Did user provide the symbol
     if currency_symb != ""  #was information passed
      @amount = amount
      @currency_symb = currency_symb
    else
       @currency_amount = amount[0]
       puts @currency_amount
    end

  end

  def currency_symb_check
    if @currency_symb_chk == "$"
       @currency_symb_chk = :USD
    elsif @currency_symb_check == "€"
      @currency_symb_check = :EUR
    end
  end

  def rem_symb # remove symbols present in the amount variable and assign to a country_code
    rem_symb = @amount[1..-1].to_i
    @currency_symb = rem_sym #assign rem_symb to the @currency instance variable so that I can assign to the correct country
    currency_symb_check #I am attempting to run the method currency_symb_check

  end

  def ==(is_equal) #Compare two of the class objects to each other
    if @amount == is_equal.amount && @currency_symb == is_equal.currency_symb
      true
    else
     false
    end
  end

  def Different_Current_Code #ERROR MESSAGE d  by using the .require_relative followed by the name of the  file.  It
                            # imports the other file code so you have access to it.

    raise UnknownCurrencyCodeError
  end

  def +(currency_object) #ADDITION.  We are saying use this method to
                          #add the amount you pass to the amount prevoiusly passed and/or that is held
                            #memory as amount...see initialize when we say @amount = amount
                            #http://strugglingwithruby.blogspot.com/2010/04/operator-overloading.html

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

  def *(currency_object) #MULTIPLICATION  We are saying use this method to
                          #add the amount you pass to the amount prevoiusly passed and/or that is held
                            #memory as amount...see initialize when we say @amount = amount
                            #http://strugglingwithruby.blogspot.com/2010/04/operator-overloading.html

      if  @currency_symb == currency_object.currency_symb && @amont.value.is_a?Float
        true
         Currency.new(@amount *currency_object.amount)
      elsif
        @currency_symb == currency_object.currency_symb && @amount.value.is_a?Fixnum
        false
        Currency.new(@amount *currency_object.amount)
      else
        raise UnknownCurrencyCodeError
      end
  end

end

 currency_one = Currency.new.rem_symbol ($532)
