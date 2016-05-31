Feature: Airport

Scenario: Ticket

	Given the flight is leaving today
	When enter toA flight "EZY4567"
	Then show flight exits

	When enter toB flight "C038"
	Then show fligth exits

	When enter toC flight "BA01618"
	Then shows fligth exits