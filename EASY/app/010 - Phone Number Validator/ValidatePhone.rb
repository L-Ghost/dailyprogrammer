
class ValidadePhone
  
  attr_accessor :phone, :formatted_phone
  
  def initialize(valid_phones)
    @num_list = %w{0 1 2 3 4 5 6 7 8 9}
    @valid_phones = valid_phones
    @formatted_phone = ""
  end
  
  def getPhoneAndValidate
    puts "Insert the phone number you want to validate."
    @phone = gets.to_s.chomp
    convert9
    checkValid(@formatted_phone.size)
  end
  
  # turns all numbers into 9
  def convert9
    @phone.split("").each do |c|
      c = 9 if @num_list.include?(c)
      @formatted_phone += c.to_s
    end
  end
  
  # check if array of valid phones contains format of phone number specified
  def checkValid(size)
    
    if !@valid_phones.key?(size.to_s)
      printResult("N IN")
      abort
    end
    
    if @valid_phones[size.to_s].include?(@formatted_phone)
      printResult(" ")
    else
      printResult("N IN")
    end
  end  
  
  def printResult(info)
    puts "THIS IS A#{info}VALID PHONE NUMBER -> " + @phone
  end
  
end

valid_phones = Hash.new
index = nil

# constructs hash containing a list of valid phone numbers from the opened file
File.open("valid_telephones.txt", "r") do |file|
  while line = file.gets
    line.split("/").each do |info|
      if ((info.size == 1) || (info.size == 2))
        index = info
        valid_phones[index] = []
      else
        valid_phones[index] << info.chomp
      end
    end
  end
end
#puts valid_phones
vp = ValidadePhone.new(valid_phones)
vp.getPhoneAndValidate