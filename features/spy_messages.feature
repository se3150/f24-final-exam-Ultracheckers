Feature: encode or decode a secret message
As a secret spy
I should be able to encode and decode messages
So that I can chat with my spy friends like a pro.

Scenario: I can successfully encode a secret message
    Given I open the url "https://www.hanginghyena.com/solvers_a/caesar-cipher-decoder"
    When I click on the button "textarea[id='letters']"
    When I set "Hello world" to the inputfield "textarea[id='letters']"
    When I click on the element "select[name='offset']"
    When I press "4"
    When I press "return"
    When I click on the button "button[id='submit']"
    When I pause for 400ms
    Then I expect that element "div[id='decoded_message']" contains the text "Lipps asvph"



Scenario: I can successfully decode a secret message
    Given I open the url "https://www.hanginghyena.com/solvers_a/caesar-cipher-decoder"
    When I click on the button "textarea[id='letters']"
    When I set "zcvmakixm" to the inputfield "textarea[id='letters']"
    When I click on the element "select[name='offset']"
    When I press "8"
    When I press "return"
    When I click on the element "select[name='includes']"
    When I click on the element "option[value='D']"
    When I click on the button "button[id='submit']"
    When I pause for 400ms
    Then I expect that element "div[id='decoded_message']" contains the text "runescape"

