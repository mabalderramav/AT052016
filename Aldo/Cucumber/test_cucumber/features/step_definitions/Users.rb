Given(/^a (\w+)$/) do |user|
 	@user = user
end
Given(/^write (\w+)$/) do |pass|
	@password = pass
end
Then(/^result next (\w+) and (\w+)$/) do |userExpect,passExpect|
	if $app_user.include? userExpect
		puts "welcom #{userExpect}"
	end
	expect($app_user.include? userExpect).to be true
end
