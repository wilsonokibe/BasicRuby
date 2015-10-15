class Vehicle
  def initialize(name, price)
    @name  = name
    @price = price
  end

  def show_vehicle
    puts "'#{@name}' costs $#{@price}.\n"
  end

  def new_price(new_price)
    @price = new_price
  end
end
