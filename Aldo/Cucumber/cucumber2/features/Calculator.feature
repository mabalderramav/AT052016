Feature: Calculator operations

Background: User application
    Given I login application
   When Verify that some user exist admin
    Then user correct admin

@smoke
Scenario: Sum
	Given I have the numbers
		|1|2|3|
	When I select the option Sum
	Then I should see result = 6
@regresion
Scenario: Sustract
	Given I have the numbers
		|1|2|3|
	When I select the option Sustract
	Then I should see result = -6