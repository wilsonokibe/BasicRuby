class String
  def remove_spaces
    string = self.gsub(/\s/, '').downcase
    frequency_counter(string)
  end

  def frequency_counter(string)  
    frequency = Hash.new(0)
    string.each_char do |i|
      frequency[i] += 1
    end
    frequency
  end
end