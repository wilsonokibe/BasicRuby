class String
  def result
    is_palindrome?(self) ? puts("#{self} is a palindrome") : puts("#{self} is not a palidrome")
    puts
  end

  def is_palindrome?(string)
    string == string.reverse
  end
end
