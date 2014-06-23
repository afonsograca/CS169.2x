Feature: Create and edit categories
  As a blog administrator
  In order to classify my articles
  I want to be able to add and edit categories on my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"
  
  Scenario: Succesfully shows the new category page
    Then I should see "Categories" in ".page-header"

  Scenario: It should be able to add a category
    When I fill in "category_name" with "Foobar"
    And I fill in "category_permalink" with "LoremIpsum"
    And I press "Save"
    Then I should see "Foobar"
    And I see "no articles"
  
  Scenario: It should be able to edit a category
    When I follow "General"
    Then I fill in "category_description" with "cucumber test"
    And I press "Save"
    Then I should see "cucumber test"
