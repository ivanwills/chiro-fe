Feature: chiro-search test suite

    Scenario: Loading chiro-search
        Given I have loaded component "chiro-search" with use case "dataDriven"
        Then the element "input" should have the text ""
