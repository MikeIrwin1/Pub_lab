class Food

  attr_reader :name, :price, :rejuvenation_level

  def initialize(name, price, rejuvenation)
    @name = name
    @price = price
    @rejuvenation_level = rejuvenation
  end

end
