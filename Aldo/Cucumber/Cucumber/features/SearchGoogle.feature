Feature: Search Goolgle

Scenario: Succesfull Search
	
	Given the person opens the browser goes to google,
	Then enter a word or phrase,
	When the result show is related to the word or phrase written

Scenario: special characters
	Then enter special characteres such as 'P@$$w0rd'
	Given the result should not show me results

Scenario: Write incoherently
	Then enter the following words asdfasdfasdfasdf
	When the result should not show anything

Scenario: there is help when words are written
	Then enter a words
	When should show support for me to know what I'm looking for