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
    numbers = sanitized_input.split(/#{Regexp.escape(delimiter)}|\n/)

    # Sanitize the numbers by removing any non-numeric characters and converting to integers.
    sanitized_numbers = []
    numbers.each do |number|
      temp_output = nil
      temp_output = convert_to_integer(number, delimiter)
      if temp_output.nil?
        next
      end
      if temp_output.is_a? Numeric
        if temp_output > 1000
          next
        else
          sanitized_numbers << temp_output
        end
      end
    end

    # Check for negative numbers and raise an exception if any are found.
    negatives = sanitized_numbers.select { |number| number < 0 }
    if negatives.any?
      raise "Negative numbers are not allowed: #{negatives.join(', ')}"
    end

    if delimiter == "*"
      return product(sanitized_numbers)
    else    
      return sum(sanitized_numbers)
    end
    return 0
  end

  def sum(numbers)
    sum = 0
    numbers.each do |number|
      sum += number
    end
    return sum
  end

  def product(numbers)
    product = 1
    numbers.each do |number|
      product *= number
    end
    return product
  end

  def convert_to_integer(number, delimiter = ",")
    if(number == "")
      return nil
    elsif(number == "0")
      return 0
    elsif(number == "*")
      return nil
    else
      return number.to_i == "" ? nil : number.to_i
    end
  end

end