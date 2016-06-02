Before('@smoke','@regression') do |scenario|
	puts "Entrando al setup"
	puts $app_user
	puts $app_host
  	puts " Let is Go scenario: #{scenario.name}"
end

After do |scenario|
   if scenario.failed?
    puts  "Faile#{scenario.exception.message}" 
   else
   	 puts " Bye Bye it Passed"
  end
end