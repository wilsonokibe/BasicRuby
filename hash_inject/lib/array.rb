class Array
  def group_odd_even
    element = group_by {|n| n.to_s.length}

    hash = Hash.new {|hash, key| hash[key] = [] }

    element.inject([]) do |value1, value2| 
      hash[:odd]  << value2.last if value2.first.odd?
      hash[:even] << value2.last if value2.first.even?
    end
    hash
  end
end