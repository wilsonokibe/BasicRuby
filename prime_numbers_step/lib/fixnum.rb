require 'prime'

class Fixnum
  def prime_numbers
    prime = []

    2.step(self) do |value|
      value.prime? && prime << value
    end
    prime
  end
end
