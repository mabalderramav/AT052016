Feature: Class

Background: Daily reports
    Given I day tasks
    |  items        | tasks         | status        |
    |fundamentals   |read testing   |   inprogress  |
    |prog01         |convexhull     |   inprogress  |
    |english        |write answers  |   inprogress  |

Scenario: Homeworks
    When task completed fundamentals
        And task in progress prog01
        And task completed english
    Then the box task is
    |  items        | tasks         | status        |
    |fundamentals   |read testing   |   done        | 
    |prog01         |convexhull     |   inprogress  |
    |english        |write answers  |   done        |