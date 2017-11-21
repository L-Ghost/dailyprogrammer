
class CaesarCipher
  
  attr_accessor :output_string
  
  def encodeString(input_string, num_skip)
    output_string = ''
    
    input_string.split("").each do |c|
      cd = c.ord
      if ((cd >= 65 && cd <= 90) || (cd >= 97 && cd <= 122))
        new_char = cd + num_skip
        if ((new_char > 90 && new_char < 97) || (new_char > 122))
          new_char -= 26
        end
      else
        new_char = cd
      end
      output_string = output_string + new_char.chr
    end
    
    return output_string
  end
  
  def decodeString(input_string, num_skip)
    output_string = ''
    
    input_string.split("").each do |c|
      cd = c.ord
      if ((cd >= 65 && cd <= 90) || (cd >= 97 && cd <= 122))
        new_char = cd - num_skip
      if ((new_char < 65) || (new_char >= 90 && new_char < 97))
        new_char += 26
      end
        else
        new_char = cd
      end
      output_string = output_string + new_char.chr
    end
    
    return output_string
  end
  
end