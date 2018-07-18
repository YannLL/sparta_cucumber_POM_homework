Feature: BBC Registration
  Scenario: Inputting incorrect registration details shows an error
  Given I access the bbc registration page
  And I input a birth year greater than 2004
  When I try to submit and continue
  Then an error rejects the age
