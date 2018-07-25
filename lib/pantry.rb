class Pantry
  attr_reader :stock
  def initialize
    @stock = {}
  end

  def stock_check(item)
    # @stock[:item]
    if @stock.include?(item)
      @stock[:item]
    else
      add_stock(item)
    end
  end

  def add_stock(item)
    @stock[item] = 0
  end

  def restock(item, amount)
    @stock[:item] = amount #=> 10
    # require 'pry'; binding.pry
  end
end
