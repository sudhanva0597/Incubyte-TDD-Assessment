class StringCalculator
  
  # int add(string numbers) to handle the addition of numbers in a string.
  # Input: string of numbers separated by commas.
  # Output: integer sum of the numbers.
  # If the string is empty, return 0.
  def add(input)
    if(input.empty?)
      return 0
    end
    
    # Split the string by commas and convert each number to an integer.
    # Then, sum the integers and return the result.
    numbers = input.split(',').map(&:to_i)
    sum = 0
    numbers.each do |number|
      sum += number
    end
    return sum
  end

end