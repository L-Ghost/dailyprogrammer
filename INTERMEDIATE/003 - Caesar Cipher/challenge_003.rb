
# String#ord only works on newer versions of Ruby

class CaesarCipher
  
  attr_accessor :input_string, :output_string, :encode_mode, :num_skip
  attr_reader :char_array, :schar_array, :num_array
  
  def initialize()
    @char_array = (97..122).to_a # ASCII codes of common chars
    @caps_array = (65..90).to_a # ASCII codes of common chars capitalised
    @schar_array = (32..47).to_a + (58..64).to_a + (91..96).to_a + (123..126).to_a # ASCII codes of special chars
    @num_array = (48..57).to_a # ASCII codes of numbers
  end
  
  def numberCipher
    puts "Insert the NUMBER of the Caesar Cipher."
	@num_skip = gets.chomp.to_i
  end
  
  def getString
    puts "Write the sequence of characters you want to convert."
    @input_string = gets.chomp
    @output_string = ""
  end
  
  def encodeString
    
    @encode_mode = true
    puts "\nENCODE SEQUENCE\n"
    convertString
    
    puts "Your sequence encoded is:\n" + @output_string
  end
  
  def decodeString
    
    @encode_mode = false
    puts "\nDECODE SEQUENCE\n"
    convertString
    
    puts "Your sequence decoded is:\n" + @output_string
  end
  
  def convertString
    
    getString
    
    @input_string.split("").each do |c|
      cd = c.ord
      if (cd.between?(32, 47) || cd.between?(58, 64) || cd.between?(91, 96) || cd.between?(123, 126)) # special char
        new_char = checkChar(cd, @schar_array)
      elsif (cd.between?(65, 90)) # normal char
        new_char = checkChar(cd, @caps_array)
      elsif (cd.between?(97, 122)) # normal char
        new_char = checkChar(cd, @char_array)
      elsif (cd.between?(48, 57)) # number
        new_char = checkChar(cd, @num_array)
      end
      
      @output_string = @output_string + new_char.chr
    end
    
  end
     
  # convert character
  def checkChar(cd, current_array)
    
    num_sub = @num_skip % current_array.size # check number of array
    pos = current_array.index(cd) # locate position of value into array
    
    if (encode_mode) # check if it is encoding or decoding
      new_pos = pos + num_sub
      new_pos -= current_array.size if new_pos > (current_array.size - 1)
    else
      new_pos = pos - num_sub
      new_pos = current_array.size - new_pos.abs if new_pos < 0
    end
    
    new_char = current_array[new_pos] # value to replace char
    
    return new_char
  end
      
end

cipher = CaesarCipher.new
cipher.numberCipher
cipher.encodeString
cipher.decodeString