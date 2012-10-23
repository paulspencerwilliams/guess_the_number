Feature: guess a number
Scenario: prompt for number
  Given the number to guess is 75
  And I visit homepage
  Then I should be prompted to guess number


Scenario: guess the answer to meaning of life the universe and everything
  Given I visit homepage
  And the number to guess is 75
  When I guess 42
  Then I should be advised discovered the answer to the meaning of life the universe and everything

 Scenario: guess too low
 	Given I visit homepage
 	And the number to guess is 75
 	When I guess 45
 	Then I should be advised to guess higher

 	Scenario: guess too high
 	Given I visit homepage
 	And the number to guess is 75
 	When I guess 76
 	Then I should be advised to guess lower

 	Scenario: guess correct number
 	Given I visit homepage
 	And the number to guess is 75
 	When I guess 75
 	Then I should be advised correct guess
