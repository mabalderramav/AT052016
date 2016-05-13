class A
	def setArray
		v = Array.new
		print "Enter to count of array : "
		count = gets.chomp.to_i
		count.times do |value|
			print "Enter to value #{value + 1} : "
			v.push(gets.chomp)
		end
		v
	end
	def getArray value
		p value
	end
end

a = A.new
a.getArray a.setArray