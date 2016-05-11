def convertOfSecondToMinutesAndMinutesToHours secondsConversion
	minuteConversion = secondsConversion / 60
	hourConversion = minuteConversion / 60
	return minuteConversion, hourConversion
end

print "Enter to seconds :"
secondsConversion = gets.chomp.to_f

minuteConversion, hourConversion = convertOfSecondToMinutesAndMinutesToHours secondsConversion
puts "#{secondsConversion} seconds is  #{minuteConversion} minutes, and #{secondsConversion} seconds is #{hourConversion} hours"