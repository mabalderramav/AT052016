class Person
	attr_accessor :name,:age
	def converdToYearsInHours
		if age < 35
			daysConversion = age * 365
			hoursConversion = daysConversion * 24
			puts "your age to #{age} years old amounts to #{hoursConversion} hours :)"
		else
			puts "that age cannot be calculated"
		end
	end
	def getLifeClicles
		case @age
			when 0..5 then puts "you are a baby"
			when 6..12 then puts "you are a child"
			when 13..21 then puts "you are a young people"
			when 22..35 then puts "you are a adult"
			else puts "that age cannot be calculated"
		end
	end
end

print "Enter to name : "
name = gets.chomp.to_s
age = 0
while age < 1
	print "Enter to age : "
	age = gets.chomp.to_i
	puts "Retpeat to age" if age < 1
end
p = Person.new

p.name = name
p.age = age

p.converdToYearsInHours
p.getLifeClicles