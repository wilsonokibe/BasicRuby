class String
  def palindrome
    puts is_palindrome? ? ("#{self} is a palindrome") : ("#{self} is not a palindrome")
    puts
  end

  def is_palindrome?
    self == reverse
  end
end
