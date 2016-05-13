class RubyArrays1
	attr_reader :v1
	attr_reader :v2
	attr_reader :v3
	def initialize
		@v1 = Array.new
		@v2 = Array.new
		@v3 = Array.new
	end
	def setThreeArrays
		print "Enter count of first array : "
		counter = gets.chomp.to_i
		counter.times do |value|
			print "Enter to number #{value} : "
			@v1.push(gets.chomp.to_i)
		end
		print "Enter count of seconds array : "
		counter = gets.chomp.to_i
		counter.times do |value|
			print "Enter to alphabetical #{value} : "
			@v2.push(gets.chomp.to_s)
		end
		print "Enter the number for the third array : "
		counter = gets.chomp.to_i
		counter.times do |value|
			print "Enter to mix #{value} : "
			@v3.push(gets.chomp.to_s)
		end
	end
	def getThreeArrays
		return @v1,@v2,@v3
	end
	def unionTwoArray myArray1,myArray2
		puts myArray1 & myArray2
		puts "first element #{myArray1.first} array1, and first element #{myArray2[0]} array2"
		puts "last element #{myArray1.last} array1, and last element #{myArray2[-1]} array2"
	end
	def joinTwoArray myArray1,myArray2
		myArray1.shift
		myArray2.pop
		v = myArray1 + myArray2
		return v
	end
	def getNewArray myNewArray
		p myNewArray
	end
end

r = RubyArrays1.new
r.setThreeArrays
p r.getThreeArrays
r.unionTwoArray r.v2,r.v3
r.getNewArray r.joinTwoArray r.v1,r.v3
#r.getNewArray r.joinTwoArray ["aldo",1,2,"jorge"],[2,"asdf",2.5,"jorge",45]