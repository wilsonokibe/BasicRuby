require_relative "vehicle.rb"

class Bike < Vehicle
  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def show_vehicle
    super
    puts "dealer $#{@dealer}.\n"
  end

end