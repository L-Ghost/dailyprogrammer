require 'easy002/speed_calculator'

describe SpeedCalculator do
  context 'when testing the speed calculator' do
    subject { described_class.new }

    it 'should return the medium speed' do
      expect(subject.medium_speed(100, 2)).to eq(50)
      expect(subject.medium_speed(100, 3)).to eq(33.33)
    end
  end
end
