=begin
	
	a parent is created with an amount of money 
	then three different children and each parent 
	gives a certain amount of money are created
=end
class Father
	@@money = 100
	def self.money
		@@money
	end
end
class Child1 < Father
	@@money = 40
end
class Child2 < Father
	@@money = 30
end
class Child3 < Father
	@@money = 30
end

puts "#{Child1.money} money is father"
puts "#{Child2.money} money is father"
puts "#{Child3.money} money is father"

puts "#{Father.money} of father"