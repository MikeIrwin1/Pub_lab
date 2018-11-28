class Pub

  attr_reader :name, :drinks
  attr_accessor :till

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

end
