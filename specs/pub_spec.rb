require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative('../customers')
require_relative('../drinks')
require_relative('../food')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Bear Arms", 0)
    @drink1 = Drinks.new({name: "whisky", price: 3, drunkenness: 4})
    @drink2 = Drinks.new({name: "wine", price: 2, drunkenness: 2})
    @drink3 = Drinks.new({name: "irish car bomb", price: 5, drunkenness: 10})
    @customer1 = Customer.new("Billy", 20, 30)
    @customer2 = Customer.new("Justin", 2, 12)
    @drinks = [@drink1, @drink2, @drink3]
    @food = Food.new("Pizza", 5, 4)

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
    assert_equal(3,@pub.customer_buy(@customer1, @drink1))
  end

  def test_customer_wallet_value_decreased
    @pub.customer_buy(@customer1, @drink1)
    assert_equal(17, @customer1.wallet)
  end

  def test_customer_age
    assert_equal(true, @pub.check_age(@customer1))
  end

  def test_customer_age__under_18
    assert_equal("You're too young to drink here!", @pub.check_age(@customer2) )
  end

  def test_customer_drunkenness_increased
    @pub.customer_buy(@customer1, @drink1)
    assert_equal(4, @customer1.drunkenness)
  end

  def test_customer_drunkenness_is_too_high
    @pub.customer_buy(@customer1, @drink3)
    @pub.customer_buy(@customer1, @drink3)
    @pub.customer_buy(@customer1, @drink3)
    @pub.customer_buy(@customer1, @drink3)
    assert_equal("You're too drunk!", @pub.check_drunkenness(@customer1))
  end

  def test_customer_drunkenness_is_below_threshold
    assert_equal(true, @pub.check_drunkenness(@customer1))
  end

  def test_refuse_service
    assert_equal("No service for you!", @pub.customer_buy(@customer2, @drink1))
  end

  def test_customer_buys_food_till_value_goes_up
    assert_equal(5,@pub.customer_buy_food(@customer1, @food))
  end

  def test_food_decreases_wallet
    @pub.customer_buy_food(@customer1, @food)
    assert_equal(15, @customer1.wallet)
  end

  def test_decreased_drunkenness_when_food_purchased
    @pub.customer_buy_food(@customer1, @food)
    assert_equal(-4, @customer1.drunkenness)
  end

end
