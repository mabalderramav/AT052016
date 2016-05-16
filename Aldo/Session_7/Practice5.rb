class HashClass
	attr_reader :myHash
	def initialize
		@myHash = Hash.new
	end
	def setHash
		print "Enter to counter of has : "
		counter = gets.chomp.to_i
		counter.times do |value|
			isrepeat = true
			while isrepeat
				print "Enter to #{value} keys : "
				key = gets.chomp
				isrepeat = myHash.has_key? key
				#puts "repeat key" if isrepeat end
			end
			isrepeat = true
			while isrepeat
				print "Enter to #{value} names : "
				name = gets.chomp
				isrepeat = myHash.has_value? name
			end
			@myHash.store key,name
		end
	end
	def getHashKey
		p myHash.keys
	end
	def getHashValues
		p myHash.values
	end
	def getHash
		p myHash
	end
end

h = HashClass.new
h.setHash
print h.myHash
puts ""
puts h.myHash
h.myHash
h.getHashValues
h.getHash