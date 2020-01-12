class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @triangle_sides = []
    @triangle_sides << side1
    @triangle_sides << side2
    @triangle_sides <<side3
  end

  def valid?
    side_1_2 = @triangle_sides[0] + @triangle_sides[1]
    side_1_3 = @triangle_sides[0] + @triangle_sides[2]
    side_2_3 = @triangle_sides[1] + @triangle_sides[2]

    if (@triangle_sides.none? {|side| side <= 0}) && (side_1_2 > @triangle_sides[2] && side_1_3 > @triangle_sides[1] && side_2_3 > @triangle_sides[0])
      return true
    else
      return false
    end
  end

  def kind
    if valid?
      if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError

  end

end

#   def valid?
#     if (((@side1 > 0) && (@side2 > 0) && (@side3 > 0))) && (((@side1 + @side2) > @side3) && ((@side1 + @side)) > @side2) && ((@side2 + @side3) > @side1))
#       return true
#     else 
#       return false
#     end
#   end

#   def kind
#     if valid?
#       if (@side1 == @side2) && (@side2 == @side3) #why can't I do @side1 == @side2 == @side3 ?
#         :equilateral
#       elsif (@side1 != @side2) && (@side2 != @side3)
#         :scalene
#       else 
#         :isosceles
#       end
#     else
#       raise TriangleError
#     end
#   end

#   class TriangleError < StandardError

#   end

# end
