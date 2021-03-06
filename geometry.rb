class Circle
	def initialize(radius)
		@r = radius		
	end
	
	def circumference
		(2*Math::PI*@r).round 2
	end
	
	def area
		(Math::PI*@r**2).round 2
	end
end

class Ellipse
	def initialize(major_axis, minor_axis)
		@a = major_axis/2
		@b = minor_axis/2		
	end
	
	def circumference
		(4*( Math::PI*@a*@b + (@a - @b)**2 )/(@a + @b)).round 2
	end
	
	def area
		(Math::PI * @a *@b).round 2
	end
end

class Triangle
	def initialize(side_a, side_b, side_c)
		@a = side_a
		@b = side_b
		@c = side_c
	end
	
	def perimeter
		@a + @b + @c
	end
	
	def area
		p = self.perimeter/2
		(Math.sqrt(p*(p-@a)*(p-@b)*(p-@c))). round 2
	end
end

class Quadrangle
	def initialize (side_a, side_b, side_c, side_d)
		@a = side_a
		@b = side_b
		@c = side_c
		@d = side_d
	end
	
	def perimeter
		@a + @b + @c + @d
	end
end

def Math::degree_to_radian(degree)
	degree*Math::PI/180
end

class Parallelogramm < Quadrangle
	def initialize(side_a, side_b, side_c = side_a, side_d = side_b)
		@a = side_a
		@b = side_b
		@c = side_c
		@d = side_d
	end
	
	def area(angle_degrees = 90)
		@alpha = Math.degree_to_radian(angle_degrees)
		(@a * @b * Math.sin(@alpha)).round 2
	end	
end

#class Rectangle < Paralellogramm
#end

class Rhombus < Parallelogramm
	def initialize(side_a, side_b = side_a, side_c = side_a, side_d = side_a)
		@a = side_a
		@b = side_b
		@c = side_c
		@d = side_d
	end
end

class Trapeze < Quadrangle
	def area
		((@a+@b)/2*Math.sqrt(@c**2 - (((@b-@a)**2 + @c**2 - @d**2)/(2*(@b-@a)))**2)).round 2
	end
end

