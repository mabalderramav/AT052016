#Background
Given(/^I login application$/) do
  puts "hola mundo"
end

When(/^Verify that some user exist (\w+)$/) do |user|
  if $app_user.include? user
      @user = user
    else
      @user = "no existe"
  end
end

Then(/^user correct (\w+)$/) do |userExpect|
   expect(@user).to eql(userExpect)
end
#Scenario
Given(/^I have the numbers$/) do |table|
  @myTabla = table.raw
  @sum
end

When(/^I select the option (Sum|Sustract)$/) do |option|
	@myTabla.each do |list|
		case option
  			when "Sum" then @result = Calculator1.add list
  			when "Sustract" then @result = Calculator1.Sustract list
  		end
	end
end

Then(/^I should see result = (-?[0-9])$/) do |resultExpect|
	puts @result
	puts resultExpect
  expect(@result).to eql(resultExpect.to_i)
end