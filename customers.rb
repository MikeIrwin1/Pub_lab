class Customer

  attr_reader :name, :wallet, :age
  attr_accessor :drunkenness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0
  end

  def decrease_wallet(drinkorfood)
    @wallet -= drinkorfood.price
  end

  def increase_drunkenness(drink)
    @drunkenness += drink.alcohol_level
  end

  def decrease_drunkenness(food)
    @drunkenness -= food.rejuvenation_level
  end

  def buy_drink(drink)
    decrease_wallet(drink)
    increase_drunkenness(drink)
  end

  def buy_food(food)
    decrease_wallet(food)
    decrease_drunkenness(food)
  end


end
