require_relative '../../app/002_stuff_calculator/custom_calc.rb'

describe CustomCalc do
  context "When testing the CustomCalc class" do
    let(:cc) {CustomCalc.new}
    
    it "should return correct body mass index" do
      bmi = cc.bodyMassIndex(100, 2)
      expect(bmi).to eq 25
      bmi2 = cc.bodyMassIndex(88, 1.75)
      expect(bmi2).to eq 28.73
    end

    it "should return correct medium speed" do
      ms = cc.mediumSpeed(100, 2)
      expect(ms).to eq 50
      ms2 = cc.mediumSpeed(200, 3)
      expect(ms2).to eq 66
      ms3 = cc.mediumSpeed(555, 5)
      expect(ms3).to eq 111
    end

    it "should return correct triangle area" do
      ta = cc.triangleArea(6, 8)
      expect(ta).to eq 24
      ta2 = cc.triangleArea(10, 8)
      expect(ta2).to eq 40
      ta3 = cc.triangleArea(40.5, 4)
      expect(ta3).to eq 81
    end
    
  end
end
    

