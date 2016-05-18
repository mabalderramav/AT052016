require "singleton"

class SetUser
	include Singleton
	attr_reader :visitors
	def initialize
		@user = "Guest"
		@message = "Welcome to the city"
		@visitors = 0
		@myHash = Hash.new
	end
	def add
		print "Enter to counter of hash : "
		count = gets.chomp.to_i
		count.times do |value|
			print "Enter to user : "
			user = gets.chomp
			print "Enter to message : "
			message = gets.chomp

			@myHash.store user,message
			@visitors += 1
		end
	end
	def getHash
		@myHash
	end
	def last
		return @myHash.keys.last,@myHash.values.last
	end
end
mySetUser = SetUser.instance
mySetUser.add
mySetUser2 = SetUser.instance
mySetUser2.add
p mySetUser.getHash
puts "Counter of visitors : #{mySetUser.visitors}"
user,message = mySetUser.last

puts user + " " + message