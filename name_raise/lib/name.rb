require_relative '../lib/name_exception.rb'

class Name
  attr_reader :firstname, :lastname

  def initialize(firstname, lastname)
    raise NameException, "Firstname cannot be blank" if firstname.empty?
      
    raise NameException, "Lastname cannot be blank" if lastname.empty?
      
    raise NameException, "Firstname must start with uppercase letter" if !firstname.match(/[A-Z].*/)

    @firstname = firstname
    @lastname  = lastname
  end

  def names
    "#{@firstname} #{@lastname}"
  end
end
