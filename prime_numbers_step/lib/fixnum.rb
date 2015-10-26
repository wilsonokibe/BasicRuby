require 'prime'

class Fixnum
  def prime_numbers
    prime = []

    2.step(self) do |value|
      prime << value if value.prime?
    end
    prime
  end
end
