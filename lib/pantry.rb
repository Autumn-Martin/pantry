class Pantry
  attr_reader :stock
  def initialize
    @stock = {}
    @shopping_list = {}
  end

  def stock_check(item)
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


    # WIP - may need to map over
    @shopping_list[recipe.ingredients.keys] = recipe.ingredients.values #=> {["Cheese", "Flour"]=>[20, 20]}
    # require 'pry'; binding.pry


    # recipe.ingredients.map do |key, value|
    #   @shopping_list[recipe.ingredients.key] = recipe.ingredients.value
    # end

  end

  def shopping_list
    @shopping_list
  end

end
