Feature: chiro-header test suite

	Scenario: Loading chiro-header
		Given I have loaded component "chiro-header" with use case "dataDriven"
		Then the element "dummy" should have the text "TODO chiro-header contents here."
