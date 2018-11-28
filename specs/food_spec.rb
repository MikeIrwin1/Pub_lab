require('minitest/autorun')
require('minitest/rg')

require_relative('../food')

class FoodTest < MiniTest::Test

  def setup
    @food = Food.new("Pizza", 5, 4)
  end

  def test_food_has_name
    assert_equal("Pizza", @food.name)
  end

  def test_food_has_price
    assert_equal(5, @food.price)
  end

  def test_food_has_rejuv_level
    assert_equal(4, @food.rejuvenation_level)
  end

end
