describe Circle  do
	describe "#initialize" do
		it "should throw exception if radius value wasn't recieved" do
			a = Circle.new.should throw(Err) 
		end
		
	describe "#perimetr" do
		it "should count perimetr" do
			a = Circle.new(6)
			b = 
		end
	end
			
end

describe Ellipse do
		describe "#initialize" do
		it "should throw exception if any of data values wasn't recieved" do
			Ellipse.new(1).should throw(Err)
		end

end

describe Rectangle do
	pending
end

describe Quadrangle do
	it "should return summ of all four sides" do
		pending
	end
end

describe Parallelogramm << Quadrangle do
	pending
end

describe Rectangle << Parallelogramm do 
	pending
end

describe Rhombus << Parallelogramm do
	pending
end

describe Trapeze << Quadrangle do
	pending
end
