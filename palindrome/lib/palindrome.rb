class String
  def result
    begin
      is_palindrome?(self) ? puts("#{self} is a palindrome") : puts("#{self} is not a palidrome")
      puts
    end while !string.match(/^q$/i)
  end

  def is_palindrome?(string)
    string == string.reverse
  end
end
