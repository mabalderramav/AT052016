=begin
	Format Class
	For class name the first capital letter, if a compound
	word the first letter of each word capitalized
=end
class Customer
	#Insert code
end
class CustomerProduct
	#Insert code
end
=begin
	methods for the first word all in lower case, if there
	are several words from the second floor to the first
	capital letter followed the parameters without parentheses.
	Also that the first word sould indicate a verb
=end
def getName
	#Insert code
end
class Person
	def setName
		#Inser oode
	end
end
=begin
	Format Variables, Getter/setter
	For the variable, getter/setter is the must describe with
	a descriptive word, this word does not have to be a verb,
	and if there are several words from the second word the first
	letter should be capitalized
=end
class Person
	attr_writer :name
	attr_reader :name
	@counterPerson #Counter of Person
end
=begin
	Format(int, float,string)
	When the value obtained through the user has to
	convert in the format that is requerided to run
	the codes
=end
name = gets.chomp.to_s
counter = gets.chomp.to_i
money = gets.chomp.to_f
=begin
	Format condition
	For conditional they should be used without parenthese,
	followed by a condition that i return true or false,
	and if it is a method should go in the end the question mark
=end
if isValidate?
	#Insert code
end