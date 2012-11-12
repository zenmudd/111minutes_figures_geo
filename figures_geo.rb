class Cirlcle
	def initialize(radius)
		@r = radius		
	end
	
	def circumference
		2*Math::PI*@r
	end
	
	def area
		Math::PI*@r**2
	end
end

class Ellipse
	def initialize(major_axis, minor_axis)
		@a = major_axis/2
		@b = minor_axis/2		
	end
	
	def circumference
		4*( Math::PI*@a*@b + (@a - @b)**2 )/(@a + @b)
	end
	
	def area
		Math::PI * @a *@b
	end
end

class Triangle
	def initialize
		
	end
	
	def perimetr
		
	end
	
	def area
		
	end
end

class Quadrangle
	def initialize (side_a, side_b, side_c, side_d)
		@a = side_a
		@b = side_b
		@c = side_c
		@d = side_d
		
end



























