
# String#ord only works on newer versions of Ruby

class CaesarCipher
  
  attr_accessor :input_string, :output_string, :encode_mode, :num_skip, :char_array
  
  def initialize()
    @char_array = (32..47).to_a + (58..64).to_a + (91..96).to_a + (123..126).to_a # ASCII codes of special chars
    @encode_mode = true
    numberCipher
  end
  
  def getString
    puts "Write the sequence of characters you want to convert."
    @input_string = gets.chomp
    @output_string = ""
  end
  
  def numberCipher
    puts "Insert the NUMBER of the Caesar Cipher."
	@num_skip = gets.chomp.to_i
  end
  
  def encodeString
    
    puts "\nENCODE SEQUENCE\n"
    getString
    
    @input_string.split("").each do |c|
      cd = c.ord
      if (cd.between?(32, 47) || cd.between?(58, 64) || cd.between?(91, 96) || cd.between?(123, 126)) # special char
        new_char = checkSpecial(cd)
      elsif (cd.between?(65, 90) || cd.between?(97, 122)) # normal char
        new_char = checkChar(cd)
      elsif (cd.between?(48, 57)) # number
        new_char = checkNumber(cd)
      end
        
      @output_string = @output_string + new_char.chr
    end
    
    puts "Your sequence encoded is:\n" + @output_string
  end
  
  def decodeString
    
    @encode_mode = false
    puts "\nDECODE SEQUENCE\n"
    getString
    
    @input_string.split("").each do |c|
	  cd = c.ord
      if (cd.between?(32, 47) || cd.between?(58, 64) || cd.between?(91, 96) || cd.between?(123, 126)) # special char
        new_char = checkSpecial(cd)
      elsif (cd.between?(65, 90) || cd.between?(97, 122)) # normal char
        new_char = checkChar(cd)
      elsif (cd.between?(48, 57)) # number
        new_char = checkNumber(cd)
      end
      
	  @output_string = @output_string + new_char.chr
    end
	
	puts "Your sequence decoded is:\n" + @output_string
  end
  
  # convert special characters
  def checkSpecial(cd)
    
    num_sub = @num_skip % @char_array.size # there are 33 characters in char_array
    pos = @char_array.index(cd) # locate position of value into array
    
    if (encode_mode) # check if it is encoding or decoding
      new_pos = pos + num_sub
      new_pos -= @char_array.size if new_pos > (@char_array.size - 1)
    else
      new_pos = pos - num_sub
      new_pos = @char_array.size - new_pos.abs if new_pos < 0
    end
    
    new_char = @char_array[new_pos] # value to replace char
    
    return new_char
  end
  
  #convert numbers
  def checkNumber(cd)
    
    num_sub = @num_skip % 10
    
    if (encode_mode)
      new_char = cd + num_sub
      if (new_char > 57)
        diff = new_char - 57
        new_char = 47 + diff
      end
    else
      new_char = cd - num_sub
      if (new_char < 48)
        diff = 48 - new_char
        new_char = 58 - diff
      end
    end
    
    return new_char
  end
  
  # convert common chars
  def checkChar(cd)
    
    num_sub = @num_skip % 26
    
    if (encode_mode)
      new_char = cd + num_sub
      if (cd.between?(65, 90))
        new_char -= 26 if (new_char > 90)
      else
        new_char -= 26 if (new_char > 122)
      end
    else
      new_char = cd - num_sub
      if (cd.between?(65, 90))
        new_char += 26 if (new_char < 65)
      else
        new_char += 26 if (new_char < 97)
      end
    end
    
    return new_char
  end  
    
end

cipher = CaesarCipher.new
cipher.encodeString
cipher.decodeString