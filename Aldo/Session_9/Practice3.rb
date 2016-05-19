# file_example = File.open("test.txt", "w+")
# file_example.truncate(0)
# file_example.write("line1")
# file_example.close
# file_example = File.open("test.txt")

# print file_example.read

print "Enter to name file with extension : "
nameFile = gets.chomp
myFile = File.open nameFile,"w"
#myFile = File.open nameFile,"a"
#myFile.truncate 0

print "Enter to counter line of file : "
count = gets.chomp.to_i
count.times do |value|
	print "Enter to line #{value} : "
	line = gets.chomp
	myFile.write line
end
myFile.close
myFile = File.open nameFile
print myFile.read