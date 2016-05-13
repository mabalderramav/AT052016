module RubyArrays
	def RubyArrays.setThreeArrays
		v1 = Array.new
		print "Enter count of first array : "
		counter = gets.chomp.to_i
		counter.times do |value|
			print "Enter to number #{value} : "
			v1.push(gets.chomp.to_i)
		end
		v2 = Array.new
		print "Enter count of seconds array : "
		counter = gets.chomp.to_i
		counter.times do |value|
			print "Enter to alphabetical #{value} : "
			v2.push(gets.chomp.to_s)
		end
		v3 = Array.new
		print "Enter the number for the third array : "
		counter = gets.chomp.to_i
		counter.times do |value|
			print "Enter to mix #{value} : "
			v3.push(gets.chomp.to_s)
		end
		return v1,v2,v3
	end
	def RubyArrays.getThreeArrays v1,v2,v3
		return v1,v2,v3
	end
	def RubyArrays.unionTwoArray myArray1,myArray2
		puts myArray1 & myArray2
		puts "first element #{myArray1.first} array1, and first element #{myArray2[0]} array2"
		puts "last element #{myArray1.last} array1, and last element #{myArray2[-1]} array2"
	end
	def RubyArrays.joinTwoArray myArray1,myArray2
		v1 = Array.new
		v1.push(myArray1.shift)
		v1.push(myArray2.pop)
		v = myArray1 + myArray2
		return v,v1
	end
	def RubyArrays.getNewArray myNewArray
		p myNewArray
	end
end