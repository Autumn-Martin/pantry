require './lib/pantry'
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

end
