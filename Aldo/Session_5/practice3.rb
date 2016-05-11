=begin

def method1 name,priceOfTiket,destinatioCity="Cochabamba"
	"#{name} destination city is #{destinatioCity} price of Tiket #{converBolivianosToDollars priceOfTiket} in dollar "
end
def converBolivianosToDollars priceOfTiket
	priceOfTiket.to_f / 6.86
end
print "Enter to name : "
name = gets.chomp.to_s
print "Enter to priceOfTiket : "
priceOfTiket = gets.chomp.f
puts method1 "Aldo", 60
=end
=begin
	
def test_block

	puts "You are in the method"
	yield
	puts "You are again back to the method"
	yield
end

test_block {puts "You are in the block"}
=end
value_1 = 10
5.times do | value_2|
	value_1 = value_2
	puts "value_1 inside the block : #{value_1}"
end

puts "value_1 outside the block : #{value_1}"