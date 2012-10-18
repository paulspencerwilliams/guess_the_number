Feature: guess a number
Scenario: prompt for number
  When I visit homepage
  Then I should be prompted to guess number

 Scenario: guess wrong
 	Given I visit homepage
 	When I guess 45
 	Then I should be advised to guess higher