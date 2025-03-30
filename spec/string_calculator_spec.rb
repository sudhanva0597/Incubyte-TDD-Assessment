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
    
    it 'returns 0 for a decimal number' do
      expect(calculator.add('0.5323')).to eq(0)
    end
  end
end