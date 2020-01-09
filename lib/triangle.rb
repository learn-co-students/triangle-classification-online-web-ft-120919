class Triangle
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if (0 >= @a) or (0 >= @b) or (0 >= @c)
      begin
        raise TriangleError
      end
    elsif (@a >= (@b + @c)) or (@b >= (@a + @c)) or (@c >= (@a + @b))
      begin
        raise TriangleError
      end
    elsif (@a == @b) && (@b == @c)
      type = :equilateral
    elsif (@a == @b) or (@b == @c) or (@a == @c)
      type = :isosceles
    else
      type = :scalene
    end
    type
  end
    
  
  class TriangleError < StandardError
  end
  
end
