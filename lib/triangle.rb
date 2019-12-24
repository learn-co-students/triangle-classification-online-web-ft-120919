require 'pry'
class Triangle

  attr_reader :l_1, :l_2, :l_3 

  def initialize(l_1, l_2, l_3)
    @l_1 = l_1
    @l_2 = l_2
    @l_3 = l_3
    

  end
  
  def kind
    # binding.pry
    if l_1 > 0 && l_2 > 0 && l_3 > 0
      if l_1 == l_2 && l_2 == l_3
        :equilateral
      elsif l_1 == l_2 && l_2 != l_3 || l_2 == l_3 && l_2 != l_1 || l_1 == l_3 && l_1 != l_2
        :isosceles
      else
        :scalene
      end
    end
  
  end

  class TriangleError < StandardError
    'TriangleError'
  end

end


