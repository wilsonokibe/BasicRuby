require_relative '../lib/name_exception.rb'

class Name
  attr :firstname, :lastname

  def initialize(firstname, lastname)
    raise NameException.new(true), "Firstname cannot be blank" if firstname.empty?
      
    raise NameException.new(true), "Lastname cannot be blank" if lastname.empty?
      
    raise NameException.new(true), "Firstname must start with uppercase letter" if !firstname.match(/[A-Z].*/)

    @firstname = firstname
    @lastname  = lastname
  end

  def names
    "#{@firstname} #{@lastname}"
  end
end
