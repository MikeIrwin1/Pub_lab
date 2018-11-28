class Pub

  attr_reader :name, :drinks
  attr_accessor :till

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
  end

  def add_drinks(drinks)
    @drinks.concat(drinks)
  end

  def customer_buy(customer, drink)
    customer.decrease_wallet(drink)
    customer.increase_drunkenness(drink)
    return @till += drink.price
  end

  def check_age(customer)
    if customer.age > 17
      return true
    end
    return "You're too young to drink here!"
  end

end
