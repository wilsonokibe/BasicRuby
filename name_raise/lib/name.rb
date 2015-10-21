require_relative '../lib/retry_exception.rb'

class Name
  attr :firstname, :lastname

  def initialize(firstname, lastname)
    if firstname.nil? || firstname.empty?
      raise RetryException.new(true), "Firstname cannot be blank"
    elsif lastname.nil? || lastname.empty?
      raise RetryException.new(true), "Lastname cannot be blank"
    elsif !firstname.match(/[A-Z].*/)
      raise RetryException.new(true), "Firstname must start with uppercase letter"
    else
      @firstname = firstname
      @lastname  = lastname
    end
  end

  def names
    full_names = @firstname + " " + @lastname
  end
end
