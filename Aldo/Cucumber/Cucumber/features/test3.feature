Feature: University Class

Scenario: Begin Class Ruby

	Given the student is class in time
	When enter to class
	Then begin class
	When on the projector
	Then begin read lesson

Scenario: Finish class ruby

	Given finish class
	When finish lesson to date
	Then settled desk