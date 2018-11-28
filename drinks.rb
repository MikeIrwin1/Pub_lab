class Drinks

  attr_reader :name, :price, :alcohol_level

  def initialize(name, price, units)
    @name = name
    @price = price
    @alcohol_level = units
  end

end
