class String
  def replace_vowel
    pattern = /[aeiou]/i
    gsub!(pattern, '*')
  end
end