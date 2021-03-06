class Pub

  attr_reader :name, :drinks
  attr_accessor :till, :stock

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
    @stock = nil
  end

  def add_drinks(drinks)
    @drinks.concat(drinks)
  end

  def add_stock(stock)
    @stock = stock
  end

  def customer_buy(customer, drink)
    if @stock[drink] > 0
      if check_age(customer) == true && check_drunkenness(customer) == true

        customer.buy_drink(drink)
        # customer.decrease_wallet(drink)
        # customer.increase_drunkenness(drink)
        @stock[drink] -= 1
        return @till += drink.price
      else
        return "No service for you!"
      end
    else
      return "Sorry we don't have any left"
    end
  end

  def check_age(customer)
    if customer.age > 17
      return true
    end
    return false
  end

  def check_drunkenness(customer)
    if customer.drunkenness < 30
      return true
    end
    return false
  end

  def customer_buy_food(customer, food)

    customer.buy_food(food)
    # customer.decrease_wallet(food)
    # customer.decrease_drunkenness(food)
    return @till += food.price
  end

end
