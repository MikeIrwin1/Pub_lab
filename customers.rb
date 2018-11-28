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

end
