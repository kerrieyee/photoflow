Feature: Posting Workflow
  In order to post
  As a user
  I want to be able to create posts

  @javascript
  Scenario: I want to add a post
  	Given I go to the home page
  	 When I click within "p.new"
  	 	And I fill in "title" with "OMG CUTE"
  	 	And I fill in "user" with "bob"
  	 	And I fill in "url" with "http://i.imgur.com/q6XXJ4c.jpg"
  	  And I press "Create New Post"
  	 Then I should see the text "OMG CUTE"