Feature: chiro-footer test suite

	Scenario: Loading chiro-footer
		Given I have loaded component "chiro-footer" with use case "dataDriven"
		Then the element "dummy" should have the text "TODO chiro-footer contents here."
