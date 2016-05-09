
=begin
	
	Class to conversion person age in minutes
	
=end
class Person
	def getsName
		print "Enter to name : "
		@name = gets.chomp.to_s
		return @name
	end
	def getsAge
		print "Enter to Age : "
		@age = gets.chomp.to_i
		return @age
	end
end
class Calculate
	def initialize name,age
		@name = name
		@age = age
	end
	def CalculatedAgeInMinutes
		days = 365
		daysConversion = @age * days
		hours = 24
		hoursConversion = daysConversion * hours
		minutes = 60
		minumetesConversion = hoursConversion * minutes
		seconds = 60
		secondsConversion = minumetesConversion * seconds
		puts "#{@name} the years in mitunes : " + secondsConversion.to_s
	end
end

person = Person.new
name = person.getsName
age =  person.getsAge

calculate = Calculate.new name,age
calculate.CalculatedAgeInMinutes