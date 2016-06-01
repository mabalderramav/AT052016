module Calculator1
	def Calculator1.add(lis_of_numbers)
	   acumulator = 0
	   lis_of_numbers.each do |value|
	   		acumulator = acumulator + value.to_i
	   end
	   acumulator
	end
	def Calculator1.Sustract(lis_of_numbers)
	   acumulator = 0
	   lis_of_numbers.each do |value|
	   		acumulator = acumulator - value.to_i
	   end
	   acumulator
	end
end