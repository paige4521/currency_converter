require_relative 'error.rb'

class Currency
   #currency_one.amount
  attr_reader :amount, :currency_symb

  def initialize (currency_symb = "", amount)
    @currency_symb = currency_symb
    @amount = amount
    if currency_symb != ""


  end

  def define_symbol (symbol) #assign the symbol passed to a currency
    if @currency_symb == "$"
       @currency_code == "USD"

    elsif @currency_code == "€"
        @currency_code == "EUR"

    end

  end

  def Different_Current_Code

    raise UnknownCurrencyCodeError
  end

  def +(currency_object) #telling the class how to add.  We are saying use this method to
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

  def -(currency_object) #telling the class how to add.  We are saying use this method to
                          #add the amount you pass to the amount prevoiusly passed and/or that is held
                            #memory as amount...see initialize when we say @amount = amount
                            #http://strugglingwithruby.blogspot.com/2010/04/operator-overloading.html

      if  @currency_symb == currency_object.currency_symb
        Currency.new(@amount -currency_object.amount)
      else
        raise UnknownCurrencyCodeError
      end
  end

  def *(currency_object) #telling the class how to add.  We are saying use this method to
                          #add the amount you pass to the amount prevoiusly passed and/or that is held
                            #memory as amount...see initialize when we say @amount = amount
                            #http://strugglingwithruby.blogspot.com/2010/04/operator-overloading.html

      if  @currency_symb == currency_object.currency_symb
        Currency.new(@amount *currency_object.amount)
      else
        raise UnknownCurrencyCodeError
      end
  end

  def verify_currency(symbol) # Verifies if currency symbols are the same
      @currency_symb == "symbol"
  end

  def ==(is_equal) #Compare two of the class objects to each other
    if @amount == is_equal.amount && @currency_symb == is_equal.currency_symb
      true
    else
     false
    end
  end


end



currency_one = Currency.new("$", 5) #we are working with OBJECT HANDLERS..Note we are calling a
# .new on  a class.  renaming to an object handler will make it easier to work with
currency_four = Currency.new("€", 10)
currency_two = Currency.new("$", 6)
currency_three = currency_four *currency_two
puts currency_one == currency_one


 #puts (currency_three +5) #.amount is a method avaialbe to this class.

 puts currency_three.amount
#puts currency_one.amount
#currency = Currency.new("€", "5") #this is how you call a new class object.  It's also where you pass the  parameters
 #currency.define_symbol("€") # currency in this case is NOT A VARIABLE...it is called an object handler. It's how we tell
 #the computer we are calling on the Currency class we jsut created.
 #Its an easier way to reference the object it calls upon.   on the object Currency (...which is always the initialize
 #method.  From here you work with the data. This starts everythign. )
#a = define_symbol
#puts "#{a}"
