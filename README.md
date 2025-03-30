## Incubyte-TDD-Assessment
##### Incubyte TDD Assessment submission from Sudhanva Nargund
---
#### String Calculator TDD Kata

1. Setting up the environment with Rspec for TDD.
    - Running bundle init and installing rpsec for running the test cases.

2. Create a simple String calculator with a method signature like this:
`int add(string numbers)`
    - Input: a string of comma-separated numbers
    - Output: an integer, sum of the numbers

3. Allow the add method to handle any amount of numbers.

4. Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)

5. Support different delimiters:
    - To change the delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]". For example, "//;\n1;2" where the delimiter is ";" should return 3.
