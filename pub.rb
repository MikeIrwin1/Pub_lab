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

  def customer_buy(drink)
    @till += drink.price
  end

end
