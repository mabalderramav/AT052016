@myFeature
Feature: Login Users

Scenario Outline: Login
	Given a <username>
		And write <password>
	Then result next <username> and <password>
	Examples:
	|username|password|
	|admin|123|
	|user1|1111|
	|user2|2222|