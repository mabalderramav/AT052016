=begin
	
rescue Exception => e
	

class Song
	#Contructor
	def initialize
		
	end
	#Metodos
	def firt_method
		puts "My firt instace method"
	end
end
=end
=begin
class Circle
	#Methods
	def getAreatoCircle valueInRadius
		return valueInRadius * 2 * Math::PI
	end
	def getPerimeterToCircle valueInRadius
		return valueInRadius * valueInRadius * Math::PI
	end
end

print "Enter to radius : "
radius = gets.chomp.to_f

#Calculate area
area = Circle.new.getAreatoCircle radius
#Calculate Perimeters
perimeter = Circle.new.getPerimeterToCircle radius

puts "Area Circle :" + area.to_s
puts "Perimeters Circle : #{perimeter}"
=end
=begin
class Test
	def test_local_variables
		value = 5;
		another_value = 10
		addition_of_values = value + another_value
		puts addition_of_values
		puts local_variables
	end
end

Test.new.test_local_variables
=end
$example_of_global = 6
module ModuleTest
	puts "Inside Module"
	puts $example_of_global
end

def method_Test
	puts "Inside Methd"
	puts $example_of_global
end

class Some_Test
	puts "Inside Class"
	puts $example_of_global
end

method_Test
puts "Inside toplevel"
puts $example_of_global
puts global_variables.include?:$example_of_global