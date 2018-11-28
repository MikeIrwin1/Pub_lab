require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative('../customers')
require_relative('../drinks')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Bear Arms", 0)
    @drink1 = Drinks.new("whisky", 3, 4)
    @drink2 = Drinks.new("wine", 2, 2)
    @drink3 = Drinks.new("irish car bomb", 5, 10)
    @customer = Customer.new("Billy", 20, 30)
    @customer2 = Customer.new("Justin", 2, 12)
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
    assert_equal(3,@pub.customer_buy(@customer, @drink1))
  end

  def test_customer_wallet_value_decreased
    @pub.customer_buy(@customer, @drink1)
    assert_equal(17, @customer.wallet)
  end

  def test_customer_age
    assert_equal(true, @pub.check_age(@customer))
  end

  def test_customer_age__under_18
    assert_equal("You're too young to drink here!", @pub.check_age(@customer2) )
  end

  def test_customer_drunkenness_increased
    @pub.customer_buy(@customer, @drink1)
    assert_equal(4, @customer.drunkenness)
  end
end
