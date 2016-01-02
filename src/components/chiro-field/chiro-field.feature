Feature: chiro-field test suite

    Scenario: Loading chiro-field
        Given I have loaded component "chiro-field" with use case "dataDriven"
        Then the element "dummy" should have the text "TODO chiro-field contents here."
