Feature: chiro-user test suite

	Scenario: Loading chiro-user
		Given I have loaded component "chiro-user" with use case "dataDriven"
		Then the element "dummy" should have the text "TODO chiro-user contents here."
