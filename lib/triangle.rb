# class Triangle
#   class TriangleError < StandardError; end

#   def initialize(a, b, c)
#     @sides = [a, b, c].sort
#     validate_triangle
#   end

#   def kind
#     if @sides.uniq.length == 1
#       :equilateral
#     elsif @sides.uniq.length == 2
#       :isosceles
#     else
#       :scalene
#     end
#   end

#   private

#   def validate_triangle
#     if @sides.any? { |s| s <= 0 } || @sides[0] + @sides[1] <= @sides[2]
#       raise TriangleError, "Invalid triangle sides: #{@sides}"
#     end
#   end
# end

# puts space = Triangle.new(1,3,5)
# puts space.kind
class Triangle
   def initialize(a,b,c)
    @sides = [a,b,c].sort
    check_triangle
   end

   def kind
    if @sides.uniq.length == 1
      :equilateral
      elsif @sides.uniq.length == 2
        :isosceles
      else 
        :scalene
    end
  end

    class TriangleError < StandardError
    end

    private

    def check_triangle
     if @sides.any? {|side| side <= 0} || @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError,"Invalid triangle measurements #{@sides}"
     end
    end

end  