require_relative '../../app/002_stuff_calculator/custom_calc.rb'

describe CustomCalc do
  context "When testing the CustomCalc class" do
    
    it "should return correct value" do
      cc = CustomCalc.new()

      bmi = cc.bodyMassIndex(100, 2)
      expect(bmi).to eq 25
      bmi2 = cc.bodyMassIndex(88, 1.75)
      expect(bmi2).to eq 28.73
      
      ms = cc.mediumSpeed(100, 2)
      expect(ms).to eq 50
      
      ta = cc.triangleArea(6, 8)
      expect(ta).to eq 24
    end
    
  end
end
    

