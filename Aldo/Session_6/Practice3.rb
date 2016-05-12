require_relative "Saludos/Saludos"
require_relative "Saludos/Hello"
require_relative "Saludos/Chau"
class HelloChau
	include Hello
	include Chau
end
puts "Module"
h = HelloChau.new
h.goodMorning
h.hi
h.goodAfternon

h.goodBye
h.Bye
h.goodEvining

puts "Library"
Hello.goodMorning
Chau.goodBye