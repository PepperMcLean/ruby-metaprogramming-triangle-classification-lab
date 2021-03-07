class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if not valid?
        raise TriangleError
    else
      if side1 == side2 && side2 == side3
        return :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        return :isosceles
      else
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end

  def valid?
    if side1 <= 0
      false
    elsif side2 <= 0
      false
    elsif side3 <= 0
      false
    elsif side1 + side2 <= side3
      false
    elsif side2 + side3 <= side1
      false
    elsif side1 + side3 <= side2
      false
    else
      true
    end
  end
end
