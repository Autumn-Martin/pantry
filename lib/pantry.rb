class Pantry
  attr_reader :stock
  def initialize
    @stock = {}
  end

  def stock_check(item)
    # @stock[:item]
    if @stock.include?(item)
      @stock[item]
    else
      add_stock(item)
    end
  end

  def add_stock(item)
    @stock[item] = 0
  end

  def restock(item, add_amount)
    @stock.map do |item, amount|
      @stock[item] = amount + add_amount
    end
  end

  def add_to_shopping_list(recipe)

  end

  def shopping_list

  end 
end
