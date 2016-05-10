=begin
	
	class customer validates your id and if it is 
	greater than 100 showing the message is in uppercase
	
=end
class Customer
	attr_reader :customer_id, :name
	def setCustomer_idAndName customer_id, name
		@customer_id = customer_id.to_i
		@name = "Hi " + name.to_s
		puts customer_id>100 ? "Thanks to be our customer".upcase : "Thanks".downcase
	end
end
custumer = Customer.new
custumer.setCustomer_idAndName 101,"aldo"
puts custumer.name.upcase
puts "Your are our cutomer #{custumer.customer_id} " + (custumer.customer_id>100 ? "Thanks to be our customer".upcase : "Thanks".downcase)