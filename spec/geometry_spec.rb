require 'spec_helper'

describe Circle  do
	let(:circle) {Circle.new(6)}
	
	describe "#initialize" do
		it "should raise an ArgumentError error if no parameters passed" do
			expect { Circle.new }.to raise_error(ArgumentError)
		end
	end
#ds
		
	describe "#circumference" do
		it "should count circle circumference" do
			circumference_checked = 37.70
			circumference = circle.circumference
			expect(circumference).to eq circumference_checked
		end
	end
	
	describe "#area" do
		it "should count circle area" do
			area_checked = 113.10
			area = circle.area
			expect(area).to eq area_checked
		end
	end
end

describe Ellipse do
	let(:ellipse) {Ellipse.new(12, 8)}
	
	describe "#initialize" do
		it "should raise an ArgumentError error if not all parameters passed" do
			expect { Ellipse.new }.to raise_error(ArgumentError)
		end
	end
	
	describe "#circumference" do
		it "should count ellipse circumference" do
			circumference_checked = 31.76
			circumference = ellipse.circumference
			expect(circumference).to eq circumference_checked
		end
	end
	
	describe "#area" do
		it "should count ellipse area" do
			area_checked = 75.4
			area = ellipse.area
			expect(area).to eq area_checked
		end
	end
end

describe Triangle do
	let(:triangle) {Triangle.new(4, 6, 8)}
	
	describe "#initialize" do
		it "should raise an ArgumentError error if no parameters passed" do
			expect { Triangle.new(1,2) }.to raise_error(ArgumentError)
		end
	end
	
	describe "#perimeter" do
		it "should count triangle perimeter" do
			perimeter_checked = 18
			perimeter = triangle.perimeter
			expect(perimeter).to eq perimeter_checked
		end
	end
	
	describe "#area" do
		it "should count triangle area" do
			area_checked = 11.62
			area = triangle.area
			expect(area).to eq area_checked
		end
	end
end

describe Quadrangle do
	let(:quadrangle) {Quadrangle.new(4, 6, 8, 10)}
	
	describe "#initialize" do
		it "should raise an ArgumentError error if not all parameters passed " do
			expect {Quadrangle.new(4, 6, 8)}.to raise_error(ArgumentError)			
		end
	end
	
	describe "#perimeter" do
		it "should count perimeter" do
			perimeter_ckecked = 28
			perimeter = quadrangle.perimeter
			expect(perimeter).to eq perimeter_ckecked
		end
	end
end

describe Math do
	describe "#degree_to_radian" do
		it "should convert degrees into radians" do
			sixty_degrees_in_radians = 1.0471975511965976
			expect( Math.degree_to_radian(60) ).to eq (sixty_degrees_in_radians)
		end
	end
end

describe Parallelogramm do
	let(:parallelogramm) {Parallelogramm.new(4, 6) }
	
	it "should be a child of Quadrangle class" do
		parallelogramm.should be_a_kind_of(Quadrangle)
	end
	
	describe "#initialize" do
		it "should raise an ArgumentError error if not all parameters passed " do
			expect {Parallelogramm.new(4)}.to raise_error(ArgumentError)			
		end
	end
	
	describe "#area" do
		it "should count parallelogramm area" do
			area_checked = 20.78
			area = parallelogramm.area(60)
			expect(area).to eq area_checked
		end
	end
end

#describe Rectangle do
#	it "should be a child of Parallelogramm class" do
#		Rectangle.new(2, 4).should be_a_kind_of(Parallelogramm)
#	end
	
#	describe "#initialize" do
#		it "should raise an ArgumentError error if not all parameters passed " do
#			expect {Parallelogramm.new(4)}.to raise_error(ArgumentError)			
#		end
#	end
#end

describe Rhombus do
	it "should be a child of Parallelogramm class" do
		Rhombus.new(2).should be_a_kind_of(Parallelogramm)
	end
	
	describe "#initialize" do
		it "should raise an ArgumentError error if not all parameters passed " do
			expect {Rhombus.new}.to raise_error(ArgumentError)			
		end
	end
end

describe Trapeze do
	let(:trapeze) {Trapeze.new(10, 8, 6, 5)}
	
	it "should be a child of Quadrangle class" do
		trapeze.should be_a_kind_of(Quadrangle)
	end
	
	describe "#area" do
		it "should count triangle area" do
			area_checked = 40.25
			area = trapeze.area
			expect(area).to eq area_checked
		end
	end
end
