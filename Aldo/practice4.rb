=begin
	proof of which is the behavior is perfomed when
	the data are antering to perform a certain task
	is controlled
=end
puts "what is your name"

name = gets.chomp

puts "hi #{name} how are you today?"
	
print "Give me a number: "
number = gets.chomp.to_i
bigger = number * 100
puts "A bigger number is #{bigger}"

puts "hello word :" + 1.to_s + " by aldo"

puts "Sum of two decimal digits"
print "Insert a number : "
firtsNumber = gets.chomp.to_f
print "Insert the second number"
secondNumber = gets.chomp.to_f

puts "Result: " + (firtsNumber + secondNumber).to_s