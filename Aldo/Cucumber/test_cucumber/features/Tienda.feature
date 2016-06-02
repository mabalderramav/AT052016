Feature: Tienda

@smoke
Scenario: Sale true
	Given I have camisa
	Then wait camisa
Scenario: Sale false
	Given I have gorra
	Then I not wait gorra