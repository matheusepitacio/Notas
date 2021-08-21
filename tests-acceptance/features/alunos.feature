Feature: As a professor
         I want to register grades to students
         So that I can manage their learning goals

Scenario: Registering grade to student with non allocated grade
Given I am at the grades page
Given I can see a student with CPF "683" in the grades list
Given I cannot see any grade in the "nota1" space for the student with CPF "683"
When I try to register "7" in "nota1" as a grade for "Mari" with CPF "683"
Then I can see "Mari" with CPF "683" and "7" in "nota1" in the grades list

