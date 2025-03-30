# frozen_string_literal: true

require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do

  # Initalize the StringCalculator class
  let(:calculator) { StringCalculator.new }

  context 'add' do
    it 'returns 0 for empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns 0 for empty string with alphabet' do
      expect(calculator.add("a")).to eq(0)
    end

    it 'returns 0 for empty string with alphabets' do
      expect(calculator.add("aabbcc")).to eq(0)
    end

    it 'returns number for a single number' do
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns number for a single number with an alphabet' do
      expect(calculator.add("1a")).to eq(1)
    end

    it 'returns number for a single number with multiple alphabets' do
      expect(calculator.add("aa1aa")).to eq(1)
    end
    
    it 'returns number for a single large number' do
      expect(calculator.add("1234")).to eq(1234)
    end
    
    it 'returns number for a single number with leading zeros' do
      expect(calculator.add("000434")).to eq(434)
    end

    it 'returns number for a single number with leading alphabets' do
      expect(calculator.add("dadad434")).to eq(434)
    end
    
    it 'returns integer number for a floating number' do
      expect(calculator.add("123.424")).to eq(123)
    end

    it 'returns integer number for a floating number with alphabets' do
      expect(calculator.add("123.424dsdsd")).to eq(123)
    end
    
    it 'returns sum for two numbers' do
      expect(calculator.add("2,4")).to eq(6)
    end

    it 'returns integer sum for two decimal numbers' do
      expect(calculator.add("2.5,2.5")).to eq(4)
    end

    it 'returns integer sum for an integer and a decimal number' do
      expect(calculator.add("2,0.5323")).to eq(2)
    end

    it 'returns sum for two numbers with leading zeros' do
      expect(calculator.add("00010,00100")).to eq(110)
    end

    it 'returns sum for two numbers with leading space' do
      expect(calculator.add("  2,  4")).to eq(6)
    end

    it 'returns sum for two numbers with trailing space' do
      expect(calculator.add("10   ,200  ")).to eq(210)
    end

    it 'returns sum for two numbers with leading and trailing spaces' do
      expect(calculator.add("  20   ,   20  ")).to eq(40)
    end

    it 'returns sum for two numbers with alphabets mixed in' do
      expect(calculator.add("aaa20aa,aa20abb")).to eq(40)
    end

    it 'returns sum for two numbers with alphabets mixed in' do
      expect(calculator.add("aaa2ccc0aa,aa2ccc0abb")).to eq(40)
    end

    it 'returns sum for empty numbers' do
      expect(calculator.add("10,,,")).to eq(10)
    end

    it 'returns sum for multiple empty numbers' do
      expect(calculator.add("10,,  40,,")).to eq(50)
    end

    it 'returns sum for multiple numbers' do
      expect(calculator.add("10,20,20,40,20")).to eq(110)
    end

    it 'returns sum for multiple numbers with mixed tests' do
      expect(calculator.add("   10, 20   ,00020,40.323211  ,  0.0020, 000.221,,")).to eq(90)
    end

    it 'returns sum for two numbers with newline' do
      expect(calculator.add("2\n4")).to eq(6)
    end

    it 'returns integer sum for two decimal numbers with newline' do
      expect(calculator.add("2.5\n2.5")).to eq(4)
    end

    it 'returns integer sum for an integer and a decimal number with newline' do
      expect(calculator.add("2\n0.5323")).to eq(2)
    end

    it 'returns sum for two numbers with leading zeros with newline' do
      expect(calculator.add("00010\n00100")).to eq(110)
    end

    it 'returns sum for two numbers with leading space with newline' do
      expect(calculator.add("  2\n  4")).to eq(6)
    end

    it 'returns sum for two numbers with trailing space with newline' do
      expect(calculator.add("10   \n200  ")).to eq(210)
    end

    it 'returns sum for two numbers with leading and trailing spaces with newline' do
      expect(calculator.add("  20   \n   20  ")).to eq(40)
    end

    it 'returns sum for multiple numbers with newline' do
      expect(calculator.add("10\n20\n20\n40\n20")).to eq(110)
    end

    it 'returns sum for empty numbers with newline' do
      expect(calculator.add("10\n\n\n")).to eq(10)
    end

    it 'returns sum for multiple empty numbers with newline' do
      expect(calculator.add("10\n\n  40\n\n")).to eq(50)
    end

    it 'returns sum for multiple numbers with mixed tests with newline and comma' do
      expect(calculator.add("   10, 20   \n00020\n40.323211  \n  0.0020, 000.221")).to eq(90)
    end

    it 'returns sum for multiple numbers with mixed tests with newline and comma' do
      expect(calculator.add("10\n,20   \n\n\n00020\n,,40.323211")).to eq(90)
    end

    it 'returns sum for two numbers with custom delimiter' do
      expect(calculator.add("//;\n2;4")).to eq(6)
    end

    it 'returns integer sum for two decimal numbers with custom delimiter' do
      expect(calculator.add("//)\n2.5)2.5")).to eq(4)
    end

    it 'returns integer sum for an integer and a decimal number with custom delimiter' do
      expect(calculator.add("//$\n2$0.5323")).to eq(2)
    end

    it 'returns sum for two numbers with leading zeros with custom delimiter' do
      expect(calculator.add("//$\n00010$$$$00100")).to eq(110)
    end

    it 'returns sum for two numbers with leading space with custom delimiter' do
      expect(calculator.add("//$\n  2$  4")).to eq(6)
    end

    it 'returns sum for two numbers with trailing space with custom delimiter' do
      expect(calculator.add("//;\n10   ;200  ")).to eq(210)
    end

    it 'returns sum for two numbers with leading and trailing spaces with custom delimiter' do
      expect(calculator.add("//;\n  20   ;   20  ")).to eq(40)
    end

    it 'returns sum for multiple numbers with custom delimiter' do
      expect(calculator.add("//;\n10;20;20;40;20")).to eq(110)
    end

    it 'returns sum for empty numbers with custom delimiter' do
      expect(calculator.add("//;\n10;;;;")).to eq(10)
    end

    it 'returns sum for multiple empty numbers with custom delimiter' do
      expect(calculator.add("//;\n10;; ;; 40;;;")).to eq(50)
    end

    it 'returns sum for multiple numbers with mixed tests with custom delimiter and newline' do
      expect(calculator.add("//;\n   10; 20   \n00020;40.323211  ;;;;  0.0020; 000.221")).to eq(90)
    end

    it 'returns sum for multiple numbers with mixed tests with custom delimiter and newline' do
      expect(calculator.add("//;\n10\n,20   \n\n\n;;;00020;;;40.323211;")).to eq(90)
    end

    it 'returns sum for multiple numbers with mixed tests with custom delimiter and newline and a comma inbetween the number' do
      expect(calculator.add("//;\n10\n,2,0  ,,, \n\n\n;;;,,00,,,02,0;;;40.323211;")).to eq(90)
    end

    it 'throws an error for negetive numbers' do
      expect { calculator.add("-2,4") }.to raise_error(RuntimeError, "Negative numbers are not allowed: -2")
    end

    it 'throws an error for multiple negetive numbers' do
      expect { calculator.add("-2,    -4") }.to raise_error(RuntimeError, "Negative numbers are not allowed: -2, -4")
    end

    it 'throws an error for trying to use - as a custom delimiter' do
      expect { calculator.add("//-\n2\n4") }.to raise_error(RuntimeError, "Invalid delimiter: -")
    end

    it 'throws an error for trying to use . as a custom delimiter' do
      expect { calculator.add("//.\n2\n4") }.to raise_error(RuntimeError, "Invalid delimiter: .")
    end

    it 'defaults to comma and newspace if the custom delimiter is not properly initialized' do
      expect(calculator.add("///;\n2\n4;2")).to eq(44)
    end

    it 'returns sum for two numbers while ignoring numbers larger than 1000' do
      expect(calculator.add("  2\n  4,1001")).to eq(6)
    end

    it 'returns sum for two numbers while ignoring numbers larger than 1000' do
      expect(calculator.add("  2\n  4,1000")).to eq(1006)
    end
  end
end