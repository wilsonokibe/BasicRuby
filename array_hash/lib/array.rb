class Array
  def get_element_by_length
    hash_array = Hash.new {|hash, key| hash[key] = [] }

    each do |element| 
      key = element.to_s.length
      hash_array[key] << element
    end
    hash_array
  end
end