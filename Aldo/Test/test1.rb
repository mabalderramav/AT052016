require_relative "Module/ConvertTo"

class Time
	include ConvertTo
end

print "Enter to minutes: "
minutes = gets.chomp.to_f

myTime = Time.new

hoursConversion = myTime.fromMinutesToHours minutes

puts "#{minutes} minutes is a #{hoursConversion} hours"

daysConversion = myTime.fromHoursToDays hoursConversion

puts "#{hoursConversion} hours is a #{daysConversion} days"

monthConversion = myTime.fromDaysToMonth daysConversion

puts "#{daysConversion} days is a #{monthConversion} month"