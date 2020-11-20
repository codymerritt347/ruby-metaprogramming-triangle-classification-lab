class Triangle
  # write code here
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if valid?
      if @side_one == @side_two && @side_two == @side_three
        :equilateral
      elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three
        :isosceles
      else
        :scalene
      end
    else
      # begin
      raise TriangleError
      # rescue TriangleError => error
      # puts error.message
    end
  end

  def valid?
    if @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      false
    elsif @side_two < 0 || @side_two < 0 || @side_three < 0
      false
    else
      true
    end
  end

  class TriangleError < StandardError
    def message
      "This isn't a triangle!"
    end
  end
end
