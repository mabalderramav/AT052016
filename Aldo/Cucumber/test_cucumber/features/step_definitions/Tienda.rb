Given(/^I have (?:camisa|gorra)$/) do
end

Then(/^wait (\w+)$/) do |productExpec|
  myArray = Module1.getMyArray
  isExits = false
  myArray.each do |value|
  	if value.eql? productExpec
  		isExits = true
  	end
  end
  expect(isExits).to be true
end
Then(/^I not wait (\w+)$/) do |productExpec|
	myArray = Module1.getMyArray
	isExits = true
	myArray.each do |value|
		if !value.eql? productExpec
			isExits = false
		end
	end
	expect(isExits).to be false
end