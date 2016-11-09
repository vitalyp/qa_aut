Feature: Search and Shoot feature

  Scenario: search in wiki and make a screenshot
    Given I am on google search page
    When I enter search subject
    Then I should find wiki link in search results
    When I navigate wiki link
    Then I should be redirected to wiki site
    And I should see the subject information
    And I would like to do a screenshot

  Scenario: search in google and make a screenshot
    Given I am on google search page
    When I enter search subject
    Then I should find wiki link in search results
    When I navigate following such link
    Then I should be redirected to subject site
    And I should see the subject information
    And I would like to do a screenshot
