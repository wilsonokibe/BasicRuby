require 'prime'

class Fixnum
  def prime_numbers
    prime = []

    2.step(self) do |value|
      if value.prime? then
        prime[prime.length] = value
      end
    end
    prime
  end
end
