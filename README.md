## Incubyte-TDD-Assessment
##### Incubyte TDD Assessment submission from Sudhanva Nargund
---

#### Steps to run tests

`bundle install`

`rspec`

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

6. Calling add with a negative number will throw an exception: "negative numbers not allowed <negative_number>".
    - If there are multiple negative numbers, show all of them in the exception message, separated by commas.

7. Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2

8. If we get * as the custom delimiter, then instead of sum return the product of the numbers.