
# String#ord only works on newer versions of Ruby

class CaesarCipher
  
  attr_accessor :input_string, :output_string, :num_skip
  
  def getString
    puts "Write the sequence of characters you want to convert."
    @input_string = gets.chomp
    @output_string = ""
  end
  
  def numberCipher
    puts "Insert the NUMBER of the Caesar Cipher."
	@num_skip = gets.chomp.to_i
	while (@num_skip > 26) do
	  @num_skip = @num_skip - 26
	end
  end
  
  def encodeString
    
    puts "\nENCODE SEQUENCE\n"
    getString
    
    @input_string.split("").each do |c|
      cd = c.ord
      if ((cd >= 65 && cd <= 90) || (cd >= 97 && cd <= 122))
        new_char = cd + @num_skip
        if ((new_char > 90 && new_char < 97) || (new_char > 122))
          new_char -= 26
        end
      else
        new_char = cd
      end
      @output_string = @output_string + new_char.chr
    end
    
    puts "Your sequence encoded is:\n" + @output_string
  end
  
  def decodeString
    
    puts "\nDECODE SEQUENCE\n"
    getString
    
    @input_string.split("").each do |c|
	  cd = c.ord
	  if ((cd >= 65 && cd <= 90) || (cd >= 97 && cd <= 122))
	    new_char = cd - @num_skip
		if ((new_char < 65) || (new_char > 90 && new_char < 97))
		  new_char += 26
		end
      else
	    new_char = cd
	  end
	  @output_string = @output_string + new_char.chr
    end
	
	puts "Your sequence decoded is:\n" + @output_string
  end
  
end

cipher = CaesarCipher.new
cipher.numberCipher
cipher.encodeString
cipher.decodeString