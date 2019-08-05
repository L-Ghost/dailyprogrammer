require 'easy002/geometric_area_calculator'

describe GeometricAreaCalculator do
  context 'when testing the geometric area calculator' do
    subject { described_class.new }

    it 'should return the rectangle area' do
      expect(subject.rectangle(6, 8)).to eq(48)
      expect(subject.rectangle(3.5, 4)).to eq(14)
    end

    it 'should return the triangle area' do
      expect(subject.triangle(6, 8)).to eq(24)
      expect(subject.triangle(10.5, 7)).to eq(36.75)
    end
  end
end
