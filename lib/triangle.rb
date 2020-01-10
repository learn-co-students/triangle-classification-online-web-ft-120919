class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a 
    @b = b
    @c = c
  end
  
  def kind
    sides = [@a,@b,@c]
    sorted = sides.sort
    greatest_side = sorted.last
    smaller_sides = sorted.first(2)
    if greatest_side >= smaller_sides.sum
        raise TriangleError
      # rescue TriangleError => error
      #   error.message
      # end
    else
      sides
    end

    if sides.uniq.length == 3
      return :scalene
    elsif sides.uniq.length == 2
      return :isosceles
    else sides.uniq.length == 1
      return :equilateral
    end
  end

  class TriangleError < StandardError
    def message
      puts "This is not a proper Triangle"
    end
  end
end
