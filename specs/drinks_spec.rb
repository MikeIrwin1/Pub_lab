require('minitest/autorun')
require('minitest/rg')

require_relative('../drinks')

class DrinksTest < MiniTest::Test

  def setup
    @drink1 = Drinks.new({name: "whisky", price: 3, drunkenness: 4})
    @drink2 = Drinks.new({name: "wine", price: 2, drunkenness: 2})
    @drink3 = Drinks.new({name: "irish car bomb", price: 5, drunkenness: 10})
  end

  def test_drink_has_name
    assert_equal("whisky", @drink1.name)
  end

  def test_drink_has_price
    assert_equal(3, @drink1.price)
  end

  def test_drink3_has_price
    assert_equal(5, @drink3.price)
  end

  def test_drink_has_alcohol_level
    assert_equal(4, @drink1.alcohol_level)
  end

end
