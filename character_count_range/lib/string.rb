class String
  def number_of_various_char_type
    hash_count = Hash.new(0)

    self.each_char do |i| 
      if ("a".."z").include?(i) 
        hash_count[:lowercase] += 1
      elsif ("A".."Z").include?(i) 
        hash_count[:uppercase] += 1
      elsif ("0".."9").include?(i) 
        hash_count[:digit] += 1
      else 
        hash_count[:special] += 1
      end 
    end
    hash_count
  end
end
