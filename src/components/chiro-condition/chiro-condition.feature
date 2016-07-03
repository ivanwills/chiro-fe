Feature: chiro-condition test suite

	Scenario: Loading chiro-condition
		Given I have loaded component "chiro-condition" with use case "dataDriven"
		Then the element "dummy" should have the text "TODO chiro-condition contents here."
