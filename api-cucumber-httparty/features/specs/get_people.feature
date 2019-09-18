Feature: Star Wars API Get People methods

  @get_luke  
  Scenario: Get Luke
    Given I make a http "get" request for the endpoint "/people/1"
    Then The status code should be 200
    And It should return valid people