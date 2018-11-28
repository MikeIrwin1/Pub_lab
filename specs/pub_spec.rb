require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Arms", 0, [])
  end

  def test_pub_has_name
    assert_equal("The Arms", @pub.name)
  end

  def test_pub_has_money
    assert_equal(0, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal([], @pub.drinks)
  end

end
