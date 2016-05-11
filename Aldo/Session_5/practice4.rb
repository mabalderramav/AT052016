def method1 name,priceOfTiket,destinatioCity="cbba"
	"#{name} destination city is #{destinatioCity.upcase} price of Tiket #{converBolivianosToDollars priceOfTiket} in dollar"
end
def converBolivianosToDollars priceOfTiket
	priceOfTiket.to_f / 6.86
end
print "Enter to name : "
name = gets.chomp.to_s
print "Enter to priceOfTiket : "
priceOfTiket = gets.chomp.to_f
print "Enter to destination city : "
destinatioCity = gets.chomp.to_s
if destinatioCity == "" || destinatioCity.nil?
	puts method1 name,priceOfTiket
else
	puts method1 name,priceOfTiket,destinatioCity
end