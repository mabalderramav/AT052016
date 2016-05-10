=begin
	
	class customer validates your id and if it is 
	greater than 100 showing the message is in uppercase
	
=end
class Customer
	attr_reader :customer_id, :name
	def setCustomer_idAndName customer_id, name
		puts customer_id>100 ? "Thanks to be our customer".upcase : "Thanks".downcase
	end
end
Customer.new.setCustomer_idAndName 101,"aldo"