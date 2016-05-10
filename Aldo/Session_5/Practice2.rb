=begin
	
	Class Weather converts Celsius to Fahrenheit and celsius fahrenheit to
	
=end
class Weather
	def convertOfCelciusToFahrenheit celsius
		puts "Convert of celsius #{celsius} to " + (((9* celsius ) /5) + 32).to_s + " Fahrenheit"
	end
	def convertOfFahrenheitToCelsius fahrenheit
		puts "Convert of fahrenheit #{fahrenheit} to " + ((5*(fahrenheit - 32))/9).to_s + " celsius"
	end
end
print "Enter to celsius :"
Weather.new.convertOfCelciusToFahrenheit gets.chomp.to_f
print "Enter to fahrenheit :"
Weather.new.convertOfFahrenheitToCelsius gets.chomp.to_f