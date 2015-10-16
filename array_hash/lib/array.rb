class Array
  def group_array
    hash_array = Hash.new {|hash, key| hash[key] = [] }

    for element in self
      key = element.to_s.length
      hash_array[key] << element
    end
    hash_array
  end
end