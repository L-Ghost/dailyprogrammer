require_relative '../../app/006_pi_decimal/pi_calculator.rb'

describe PiCalculator do
  context "When testing the PiCalculator class" do
    
    it "should generate correct number" do
      pi = PiCalculator.new()
            
      num1 = pi.calculate(5)
      num2 = pi.calculate(10)
      num3 = pi.calculate(20)
      num4 = pi.calculate(30)
      num5 = pi.calculate(88)

      expect(num1).to eq "3.14159"
      expect(num2).to eq "3.1415926535"
      expect(num3).to eq "3.14159265358979323846"
      expect(num4).to eq "3.141592653589793238462643383279"
      expect(num5).to eq "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348"

    end

  end
end
    

