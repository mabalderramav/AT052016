def getRandomCity option
	case option
		when 1 then "CBBA"
		when 2 then "SCZ"
		when 3 then "LPZ"
		when 4 then "BEN"
		when 5 then "PAN"
		when 6 then "TAR"
		when 7 then "SCR"
		when 8 then "PTS"
		when 9 then "ORU"
		else "La ciudad no existe"
	end
end
myFile = File.open "utilitario.txt","w+"
#count = gets.chomp.to_i

100.times do |value|
	line = "|user_#{value}|pass_#{value}|#{rand 1..30}/#{rand 1..12}/20#{rand 16..35}|#{getRandomCity rand 1..9}|\n"
	myFile.write line
end
myFile.close
myFile = File.open "utilitario.txt"
print myFile.read