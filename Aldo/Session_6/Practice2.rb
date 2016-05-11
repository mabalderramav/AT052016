def method_block

	##some code

	result = 0

	yield result

	puts "The value obtained is #{result}"
end

method_block {|result| puts result = result *25}

method_block do |result|

	result = result==0? 25+15:25*5
	puts result
	puts "I changed the value into the block"

	## any other code  that you would like to introduce into the method
end
method_block {puts (result = 15.0 /25.0).to_f}