def setNombre
	print "Enter to name : "
	name = gets.chomp.to_s
	if /^[a-z0-9_]*$/ =~ name
		puts name
	else
		puts "Incorrect format"
	end
end
def setPassword
	print "Enter to password : "
	password = gets.chomp.to_s
	if 8..12 == password.size
		if /\w/ =~ password
			puts password
		else
			puts "Incorrect format"
		end
	else
		puts "Incorrect format count"
	end
end
def setEmail
	print "Enter to email : "
	email = gets.chomp.to_s
	if /@/ =~ email
		if /(\.com)$/ =~ email
			puts email
		else
			puts "Incorrect format .com"
		end
	else
		puts "Incorrect format @"
	end
end
setNombre
setPassword
setEmail