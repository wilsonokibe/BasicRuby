class String
  def unify_case
    downcase.frequency_counter
  end

  def frequency_counter
    frequency = Hash.new(0)
    each_char do |i|
      frequency[i] += 1
    end
    frequency
  end
end