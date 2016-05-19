require_relative "Module/ConvertTo"
require "singleton"
class User
	include Singleton
	attr_accessor :userName,:userId
	def initialize
		userName = nil
		userId = nil
	end
end
class Registration
	include ConvertTo
	def initialize
		@myHash = Hash.new
	end
	def add myUser
		@myHash.store myUser.userId,myUser.userName
	end
	def get
		@myHash
	end
end

myRegistrattion = Registration.new
count = 0
while count < 3 || count > 15
	print "Enter to counter user Registration :"
	count = gets.chomp.to_i
	if count > 2 && count < 16
		count.times do |value|
			user = User.instance
			print "Enter to uaserId : "
			userId = gets.chomp.to_i
			userName = "AAAAAAAAAAAAAA"
			while userName.size > 11 || /^[^a-z0-9]*$/ =~ userName
				print "Enter to userName : "
				userName = gets.chomp
				puts "Repeat to userName" if userName.size > 11 || /^[^a-z0-9]*$/ =~ userName
			end
			user.userId = userId
			user.userName = userName

			myRegistrattion.add user
		end
		p myRegistrattion.get
	else
		puts "Repeat to counter range 3 a 15"
	end
end
myFile = File.open "log.txt","w+"
myHash = myRegistrattion.get

myHash.each do |key,value|
	puts "Time Conversion"
	puts "a = from minutes to hours"
	puts "b = from hours to day"
	puts "c = from day to month"
	print "Hi, #{value} choose an option : "
	option = gets.chomp
	myFile.write "|optin insert #{option}|"
	case option.upcase
		when "A" then
			print "insert the value in minutes : "
			minutes = gets.chomp.to_f
			myFile.write "|minutes #{minutes}|"
			hoursConversion = myRegistrattion.fromMinutesToHours minutes
			puts "#{minutes} min represent #{hoursConversion} hours"
			myFile.write "|hours Conversion #{hoursConversion}|\n"
		when "B" then
			print "insert the value in hours : "
			hoursConversion = gets.chomp.to_f
			myFile.write "|hours #{hoursConversion}|"
			daysConversion = myRegistrattion.fromHoursToDays hoursConversion
			puts "#{hoursConversion} hrs represent #{daysConversion} day"
			myFile.write "|days Conversion #{daysConversion}|\n"
		when "C" then
			print "insert the value in days : "
			daysConversion = gets.chomp.to_f
			myFile.write "|days #{daysConversion}|"
			monthConversion = myRegistrattion.fromDaysToMonth daysConversion
			puts "#{daysConversion} day represent #{monthConversion} day"
			myFile.write "|month Conversion #{monthConversion}|\n"
	end
end
myFile.close