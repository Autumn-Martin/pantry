class Pantry
  attr_reader :stock, :shopping_list
  def initialize
    @stock = {}
    @shopping_list = {}
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
    # @shopping_list[@name] = @ingredients
  end


end
