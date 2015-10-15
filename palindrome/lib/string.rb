class String
  def result
    self.is_palindrome? ? puts("#{self} is a palindrome") : puts("#{self} is not a palidrome")
    puts
  end

  def is_palindrome?
    self == self.reverse
  end
end
