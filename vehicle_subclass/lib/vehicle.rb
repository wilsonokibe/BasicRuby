class Vehicle
  def initialize(name, price)
    @name  = name
    @price = Float(price)
  end

  def show_vehicle
    puts "'#{@name}' costs $#{@price}"
  end

  def new_price(new_price)
    @price = Float(new_price)
  end
end
