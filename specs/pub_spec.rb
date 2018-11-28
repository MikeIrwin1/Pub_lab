require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative('../customers')
require_relative('../drinks')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Bear Arms", 0)
    @drink1 = Drinks.new("whisky", 3)
    @drink2 = Drinks.new("wine", 2)
    @drink3 = Drinks.new("irish car bomb", 5)
    @customer = Customer.new("Billy", 20, 30)
    @drinks = [@drink1, @drink2, @drink3]

    @pub.add_drinks(@drinks)
  end

  def test_pub_has_name
    assert_equal("The Bear Arms", @pub.name)
  end

  def test_pub_has_money
    assert_equal(0, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal(@drinks, @pub.drinks)
  end

  def test_customer_buys_drink_till_value_goes_up
    assert_equal(3,@pub.customer_buy(@drink1))
  end

end
