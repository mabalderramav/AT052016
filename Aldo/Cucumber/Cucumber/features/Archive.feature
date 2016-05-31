Feature: Archive

Scenario: Cashout

	Given enter your pin number 2056 and select option 1 cashout
	When enter the amount to withdraw $250 and gives you accept
	Then withdraws $250 from your checking account

#Scenario: LoginIn
#	Given the customer enters their user name mvaca and password aldo12