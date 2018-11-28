require('minitest/autorun')
require('minitest/rg')

require_relative('../customers')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Billy", 20, 30)
  end

  def test_customer_has_name
    assert_equal("Billy", @customer.name)
  end

  def test_customer_has_money
    assert_equal(20, @customer.wallet)
  end

  def test_customer_has_age
    assert_equal(30, @customer.age)
  end

end
