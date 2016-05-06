=begin
	 converion of seconds to minutes, seconds to
	 hours to day and seconds
=end
secondsConversion = 86400.0
seconds = 60.0
minutes = 60.0
hours = 24.0

#Conversion of seconds to minutes
minutesConversion = secondsConversion / seconds
puts "#{secondsConversion} seconds are #{minutesConversion} minutes"

#Conversion of minutes to hours
hoursConversion = minutesConversion / minutes
puts minutesConversion.to_s + " minutes are " + hoursConversion.to_s + " hours"

#Conversion of hours to day
daysConversion = hoursConversion / hours
puts "#{hoursConversion} hours are " + daysConversion.to_s + " days"

#Starting the program
puts "1 - Convert of seconds to minutes"
puts "2 - Convert of minutes to hours"
puts "3 - Convert of hours to days"
print "enter a opcion : "
option = gets.chomp.to_i
if (1...4) === option
	if option.eql?(1)
		#Conversion of seconds to minutes
		print "Enter the seconds :"
		secondsConversion = gets.chomp.to_f
		minutesConversion = secondsConversion / seconds
		puts "#{secondsConversion} seconds are #{minutesConversion} minutes"
	elsif option.eql?(2)
		#Conversion of minutes to hours
		print "Enter the minutes :"
		minutesConversion = gets.chomp.to_f
		hoursConversion = minutesConversion / minutes
		puts minutesConversion.to_s + " minutes are " + hoursConversion.to_s + " hours"
	elsif option.eql?(3)
		#Conversion of hours to day
		print "Enter the hours :"
		hoursConversion = gets.chomp.to_f
		daysConversion = hoursConversion / hours
		puts "#{hoursConversion} hours are " + daysConversion.to_s + " days"
	end
else
	puts "Type the correct option"
end