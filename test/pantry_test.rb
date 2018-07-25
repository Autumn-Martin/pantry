require './lib/pantry'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test
  def test_it_exists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end
  # # Checking and adding stock
  def test_stock_can_be_added
    pantry = Pantry.new
    assert_equal ({}), pantry.stock
    pantry.add_stock("Mango")
    assert_equal ({"Mango" => 0}), pantry.stock
  end

  def test_it_can_be_restocked
    pantry = Pantry.new
    assert_equal 0, pantry.stock_check("Cheese")
    pantry.restock("Cheese", 10)
    assert_equal 10, pantry.stock_check("Cheese")
    pantry.restock("Cheese", 20)
    assert_equal 30, pantry.stock_check("Cheese")
  end

  def test_ingredients_can_be_added_to_the_shopping_list
    pantry = Pantry.new
    r = Recipe.new("Cheese Pizza")

    assert_instance_of Recipe, r
    assert_equal ({}), r.ingredients

    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)

    assert_equal ({"Cheese" => 20, "Flour" => 20}), r.ingredients

    pantry.add_to_shopping_list(r)
    assert_equal ({"Cheese" => 20, "Flour" => 20}), pantry.shopping_list
  end


  # # Adding the recipe to the shopping list
  # pantry.add_to_shopping_list(r)
  #
  # # Checking the shopping list
  # pantry.shopping_list # => {"Cheese" => 20, "Flour" => 20}
  #
  # # Adding another recipe
  # r = Recipe.new("Spaghetti")
  # r.add_ingredient("Spaghetti Noodles", 10)
  # r.add_ingredient("Marinara Sauce", 10)
  # r.add_ingredient("Cheese", 5)
  # pantry.add_to_shopping_list(r)
  #
  # # Checking the shopping list
  # pantry.shopping_list # => {"Cheese" => 25, "Flour" => 20, "Spaghetti Noodles" => 10, "Marinara Sauce" => 10}
  #
  # # Printing the shopping list
  # pantry.print_shopping_list
  # # * Cheese: 25
  # # * Flour: 20
  # # * Spaghetti Noodles: 10
  # # * Marinara Sauce: 10
  # # => "* Cheese: 25\n* Flour: 20\n* Spaghetti Noodles: 10\n* Marinara Sauce: 10"


end
