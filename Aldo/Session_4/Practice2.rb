=begin
	
class person who receives your name and greets
	
=end
class Person
	attr_accessor :name
end
person = Person.new
print "Enter to name : "
name = gets.chomp.to_s
person.name = "Hi #{name}"
puts "#{person.name} have a nice day"