class String
  def replace_vowel
    return self.gsub(/[a|e|i|o|u]+/, '*')
  end
end