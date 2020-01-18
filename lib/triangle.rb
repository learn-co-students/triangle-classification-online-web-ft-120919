class Triangle
  attr_accessor :one, :two, :three
  
    def initialize (one, two, three)
        @one = one
        @two = two
        @three = three
    end
    
    def kind
        illegal_triangle
        
        if one == two && one == three
            :equilateral
        elsif one == two || one == three || two == three
            :isosceles
        else
            :scalene
        end
    end
    
    def illegal_triangle
        if one <= 0 || two <= 0 || three <= 0
            begin
                raise TriangleError
            end
        elsif one == nil || two == nil || three == nil
            begin
                raise TriangleError
            end
        elsif one + two <= three || one + three <= two || three + two <= one
            begin
                raise TriangleError
            end
        end
    end
end

Prime Number Method

def prime?(int)
 if int < 2
   false
 elsif int = 2
   true
 else
 factors = (2..int/2).to_a
 !factors.any? {|i| int % i == 0 }
  end
end