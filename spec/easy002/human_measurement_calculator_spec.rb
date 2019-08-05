require 'easy002/human_measurement_calculator'

describe HumanMeasurementCalculator do
  context 'when testing the human measurement calculator' do
    subject { described_class.new }

    it 'should return the body mass index' do
      expect(subject.body_mass_index(100, 2)).to eq(25)
      expect(subject.body_mass_index(88, 1.75)).to eq(28.73)
    end
  end
end
