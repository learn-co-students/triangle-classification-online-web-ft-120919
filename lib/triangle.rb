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

    a = [l_1, l_2, l_3]
    a = a.sort  

    if l_1 <= 0 || l_2 <= 0 || l_3 < 0 || a[0] + a[1] <= a[2]
      begin 
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message_invalid_length
      end
    
     
    
    # elsif l_1 + l_2 < l_3 || l_2 + l_3 < l_1 || l_1 + l_3 < l_2
    
    # elsif 
    #   begin 
    #     raise TriangleError  
        
    #   end
    else
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
    # 'TriangleError'
    def message_invalid_length
      "invalid length"
    end

    def message_triangle_inequality
      "triangle inequality"
    end
  end

end


