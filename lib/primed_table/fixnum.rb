class Fixnum
  def prime?
    (2..self/2).none?{ |i| self % i == 0 }
  end
end
