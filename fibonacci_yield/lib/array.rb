class Array
  def fibonacci
    yield while self[-1] < 900
  end
end
