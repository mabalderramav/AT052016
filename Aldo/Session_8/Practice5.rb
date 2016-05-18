class Person
	attr_accessor :userId,:name
end
class SetPerson
	def initialize
		@myHash = Hash.new
	end
	def add person
		@myHash.store person.userId, person.name
	end
	def getUserIdInNumber number
		@myHash.select { |userId,name| userId if /#{number}/ =~ userId.to_s  }
	end
	def getNameOfOneChar myChar
		@myHash.select { |userId,name| name if /^#{myChar}/ =~ name}
	end
	def getHash
		@myHash
	end
end
mySetPerson = SetPerson.new
print "Enter to counter of person : "
count = gets.chomp.to_i
count.times do |value|
	person = Person.new
	userId = 0
	while userId < 1 || userId > 100
		print "Enter to userId : "
		userId = gets.chomp.to_i
		puts "Repeat to userId" if userId < 1 || userId > 100
	end
	person.userId = userId
	name = "AAAAAAAAA"
	while name.size > 8  || /[A-Z]/ =~ name
		print "Enter to name : "
		name = gets.chomp
		puts "Repeat to name" if name.size > 8  || /[A-Z]/ =~ name
	end
	person.name = name
	mySetPerson.add person
end

p mySetPerson.getUserIdInNumber 1

p mySetPerson.getNameOfOneChar "a"

myHash = mySetPerson.getHash

myHash.each_with_index do |(userId,name), index|
	case userId
		when 1..25 then puts "User #{name} belong Group 1"
		when 26..50 then puts "User #{name} belong Group 2"
		when 51..75 then puts "User #{name} belong Group 3"
		when 75..100 then puts "User #{name} belong Group 4"
	end
end

p myHash