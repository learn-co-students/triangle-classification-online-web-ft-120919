class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    if side1 > 0 && side2 > 0 && side3 > 0 && side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
      @side1 = side1
      @side2 = side2
      @side3 = side3
    else
      raise TriangleError
    end
  end

  def equilateral?
    side1 == side2 && side1 == side3 
  end
 
  def isosceles?
    !equilateral? && side1 == side2 || side1 == side3 || side2 == side3
  end

  def scalene?
    !equilateral? && !isosceles?
  end
  
  def kind
    if equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    else
      :scalene
    end

  end


  class TriangleError < StandardError
    def message
      "Not a valid triangle"
    end
  end



  # write code here
end
