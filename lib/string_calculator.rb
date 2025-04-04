class StringCalculator
  
  # int add(string numbers) to handle the addition of numbers in a string.
  # Input: string of numbers separated by commas.
  # Output: integer sum of the numbers.
  # If the string is empty, return 0.
  def add(input)
    delimiter = ","
    if input[0] == "/" && input[1] == "/" && input[3] == "\n"
      if input[2] == "-" || input[2] == "."
        raise "Invalid delimiter: #{input[2]}"
      end
      delimiter = input[2]
    end
    # Remove non-numeric and non-separator characters
    sanitized_input = input.gsub(/[^0-9#{Regexp.escape(delimiter)}.\-\n]/, '')
    if(sanitized_input.empty?)
      return 0
    end

    # Split the string by commas and convert each number to an integer.
    # Then, sum the integers and return the result.
    numbers = sanitized_input.split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i)

    # Check for negative numbers and raise an exception if any are found.
    negatives = numbers.select { |number| number < 0 }
    if negatives.any?
      raise "Negative numbers are not allowed: #{negatives.join(', ')}"
    end
    
    sum = 0
    numbers.each do |number|
      if number > 1000
        next
      end
      sum += number
    end
    return sum
  end

end