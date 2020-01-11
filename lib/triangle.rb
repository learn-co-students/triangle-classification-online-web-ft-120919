class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
# triangle inequality conditions
    s1s2= (@s1+@s2)>@s3
    s2s3= (@s2+@s3)>@s1
    s1s3= (@s1+@s3)>@s2
# raise error if the inequality is broken
    if (!s1s2 || !s2s3 || !s1s3)
      raise TriangleError
    end


    if @s1==@s2 && @s2==@s3
      return :equilateral
    elsif  @s1==@s2 || @s2==@s3 || @s1==@s3
      return :isosceles
    else
      return :scalene
    end

  end

  class TriangleError < StandardError
    # triangle error code
  end

end
