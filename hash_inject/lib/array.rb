class Array
  def group_odd_even
    a = self.group_by {|n| n.to_s.length}

    h = Hash.new {|hash, key| hash[key] = [] }

    a.inject([]) do |value1, value2| 
      h[:odd]  << value2.last if value2.first.odd?
      h[:even] << value2.last if value2.first.even?
    end
    h
  end
end