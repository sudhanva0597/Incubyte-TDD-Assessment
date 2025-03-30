# frozen_string_literal: true

require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do

  # Initalize the StringCalculator class
  let(:calculator) { StringCalculator.new }

  context 'add' do
    it 'returns 0 for empty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns number for a single number' do
      expect(calculator.add('1')).to eq(1)
    end
    
    it 'returns number for a single large number' do
      expect(calculator.add('1234')).to eq(1234)
    end
    
    it 'returns number for a single number with leading zeros' do
      expect(calculator.add('000434')).to eq(434)
    end
    
    it 'returns integer number for a floating number' do
      expect(calculator.add('123.424')).to eq(123)
    end
    
    it 'returns sum for two numbers' do
      expect(calculator.add('2,4')).to eq(6)
    end

    it 'returns integer sum for two decimal numbers' do
      expect(calculator.add('2.5,2.5')).to eq(4)
    end

    it 'returns integer sum for an integer and a decimal number' do
      expect(calculator.add('2,0.5323')).to eq(2)
    end

    it 'returns sum for two numbers with leading zeros' do
      expect(calculator.add('00010,00100')).to eq(110)
    end

    it 'returns sum for two numbers with leading space' do
      expect(calculator.add('  2,  4')).to eq(6)
    end

    it 'returns sum for two numbers with trailing space' do
      expect(calculator.add('10   ,200  ')).to eq(210)
    end

    it 'returns sum for two numbers with leading and trailing spaces' do
      expect(calculator.add('  20   ,   20  ')).to eq(40)
    end

    it 'returns sum for multiple numbers' do
      expect(calculator.add('10,20,20,40,20')).to eq(110)
    end

    it 'returns sum for multiple numbers with mixed tests' do
      expect(calculator.add('   10, 20   ,00020,40.323211  ,  0.0020, 000.221')).to eq(90)
    end
  end
end