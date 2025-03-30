# frozen_string_literal: true

require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do

  # Initalize the StringCalculator class
  let(:calculator) { StringCalculator.new }

  context 'add' do
    it 'returns 0 for empty string' do
      expect(calculator.add('')).to eq(0)
    end
  end
end