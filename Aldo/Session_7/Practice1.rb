=begin
	
Management array
	
=end

def getArray
	["aldo",1,1.8,"balderrama"]
end
print getArray
puts ""
puts getArray

def getFirstArray
	getArray.first
end
print "First elemtent of an array : "
puts getFirstArray

def getLastArray
	getArray.last
end
print "Last elemtent of the array : "
puts getLastArray

def getArray1
	["Oscar",2,1.8,"balderrama"]
end

puts "Union two array :"
print getArray & getArray1
puts ""
puts getArray & getArray1