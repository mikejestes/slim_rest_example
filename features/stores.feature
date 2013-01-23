Feature: Listing Stores
  As a logged in user
  I should see stores

  Scenario: Listing Stores
    Given I am logged in
    When I GET request "/api/stores"
    Then the list contains 2

  Scenario: Listing a Specific Store
    Given I am logged in
    When I GET request "/api/stores/1"
    Then the name property equals "Store A"

  Scenario: Listing a Non-Existant Store
    Given I am logged in
    When I GET request "/api/stores/4117"
    Then the response status is 404
    And the response is blank
