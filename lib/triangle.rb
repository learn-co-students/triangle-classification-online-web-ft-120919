require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three 

  def initialize(side_one, side_two, side_three)
   
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

  end #init

  def kind
    #binding.pry
    is_valid = (side_one + side_two > side_three) && (side_one + side_three > side_two) && (side_three + side_two > side_one)
    all_pos = (side_one > 0) && (side_two > 0) && (side_three > 0)
    #binding.pry
    if !is_valid || !all_pos 
      raise TriangleError
    else
      if side_one == side_two and side_one == side_three
        :equilateral
      elsif side_one == side_two or side_one == side_three or side_two == side_three
        :isosceles
      else
        :scalene
      end #if (classifying triangle)
    end #if
  end

  class TriangleError < StandardError
  end #class TriangleError

end
