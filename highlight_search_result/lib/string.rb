class String

  def highlight_match(search_word)
    counter = 0
    pattern = /(#{search_word})+/i

    gsub!(pattern) do |match| 
      counter += 1
      match =  "(#{match})"
    end
    return counter, self
  end
end
