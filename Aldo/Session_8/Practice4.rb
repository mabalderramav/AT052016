require 'singleton'
class Persons 
	include Singleton
	@countOfPerson
	def initialize #countOfPerson
		@countOfPerson = 2 #countOfPerson
		@myHash = Hash.new
	end
	def setPerson
		@countOfPerson.times do |value|
			print "Enter to key : "
			key = gets.chomp.to_s
			print "Enter to value : "
			myValue = gets.chomp.to_s

			@myHash.store key,myValue.upcase
		end
	end
	def getNameAndId
		@myHash.each_with_index do |(key,value),index|
			print "[#{index + 1}] Key : #{key} and name : #{value} registered"
			puts ""
		end
		p getNameArray
	end
	def getNameArray
		@myHash.values.map {|value| value}
	end
	def getGoodBye
		@myHash.each {|(key,value)| puts "good bye #{value}"}
		puts "everyone left :("
	end
end
print "Enter to register persons : "
countOfPerson = gets.chomp.to_i
p = Persons.instance
p.setPerson
b =  Persons.instance
b.getNameAndId
c = Persons.instance
p.getGoodBye
# p = Persons.new countOfPerson
# p.setPerson
# p.getNameAndId
# p.getGoodBye