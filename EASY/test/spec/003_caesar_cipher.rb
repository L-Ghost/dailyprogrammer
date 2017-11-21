require_relative '../../app/003_caesar_cipher/caesar_cipher.rb'

describe CaesarCipher do
  context "When testing the CaesarCipher class" do
    
    it "should return correct string" do
      cc = CaesarCipher.new()
      
      encoded = cc.encodeString("BANANA", 5)
      expect(encoded).to eq "GFSFSF"
      
      encoded = cc.encodeString("kawabanga", 4)
      expect(encoded).to eq "oeaeferke"
      
      encoded = cc.encodeString("Ziltoid", 2)
      expect(encoded).to eq "Bknvqkf"
      
      
      decoded = cc.decodeString("OEAEFERKE", 4)
      expect(decoded).to eq "KAWABANGA"
      
      decoded = cc.decodeString("antananarivo", 7)
      expect(decoded).to eq "tgmtgtgtkboh"
    end
    
  end
end
    

