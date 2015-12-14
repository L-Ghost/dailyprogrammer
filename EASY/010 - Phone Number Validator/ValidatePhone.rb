
#
# INCOMPLETE
#

class ValidadePhone
  
  attr_accessor :phone
  
  def initialize
    getPhone
  end
  
  def getPhone
    puts "Insert the phone number you want to validate."
    @phone = gets.to_s
    check
  end
  
  def check
    
    checkSymbols
    checkLength
    
    puts "This is a valid phone number -> " + @phone
    getPhone
     
  end
  
  def checkSymbols
        
  end
  
  def checkLength
    
    len = @phone.delete(" ").length # verify length of string, disconsidering spaces
    if ((len < 9) || (len > 16))
      wrong
    else
      puts "#{len - 1} digits"
    end
    
  end
  
  def wrong
    puts "INVALID PHONE NUMBER -> " + @phone
  end
  
end

vp = ValidadePhone.new()