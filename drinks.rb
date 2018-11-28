class Drinks

  attr_reader :name, :price, :alcohol_level

  def initialize(object)
    @name = object[:name]
    @price = object[:price]
    @alcohol_level = object[:drunkenness]
  end

end
