Feature: Alfanumerico

Scenario: Only Digits

	Given in the texbox
	Then enter digits 123
	When validated digits

Scenario: Only lower case
	
	Then enter lower case word
	When validated words

Scenario: Any character except digits
	Then enter any character Pa$$word
 	When validated characters