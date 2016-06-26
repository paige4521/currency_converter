require_relative 'error.rb'

class Currency
   #currency_one.amount
  attr_reader :amount, :currency_symb

  def initialize (currency_symb = "", amount)
    @currency_symb = currency_symb
    @amount = amount
    if currency_symb != ""
    end

  end

  def ==(is_equal) #Compare two of the class objects to each other
    if @amount == is_equal.amount && @currency_symb == is_equal.currency_symb
      true
    else
     false
    end
  end
