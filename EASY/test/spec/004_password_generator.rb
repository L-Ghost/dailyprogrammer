require_relative '../../app/004_password_generator/password_generator.rb'

describe PasswordGenerator do
  context "When testing the PasswordGenerator class" do
    
    it "should return correct size" do
      pg = PasswordGenerator.new()
      
      pass1 = pg.generate(11)
      pass2 = pg.generate(14)
      pass3 = pg.generate(17)

      expect(pass1.size).to eq 11
      expect(pass2.size).to eq 14
      expect(pass3.size).to eq 17

    end
    
    it "should have correct chars" do
      pg = PasswordGenerator.new()

      pass = pg.generate(10)

      expect(pass.include? '*').to be(false)
      expect(pass.include? '-').to be(false)
    end

  end
end
    

