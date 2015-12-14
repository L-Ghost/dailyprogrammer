
class Organizer
  
  attr_accessor :input_string, :array_chars, :sz
    
  def getString
    puts "Insert the sequence of characters you want to rearrange, separating them by spaces:\n"
    @input_string = gets.chomp
    @array_chars = @input_string.split(" ")
    @sz = @array_chars.size - 1
  end
  
  def replaceStuff(ind1, ind2)
    @array_chars[ind1], @array_chars[ind2] = @array_chars[ind2], @array_chars[ind1]
  end
  
  def toArrayNum() # organize numbers
    
    puts "NUMBER ORGANIZER"
    getString
    
    0.upto(@sz) do |c|
      
      (c + 1).upto(@sz) do |d|
        if (array_chars[c].to_i > array_chars[d].to_i)
          replaceStuff(c, d)
        end
      end
      
    end
    
    print @array_chars.to_s + "\n"
    
  end
  
  def toArrayChar() # organize characters
    
    puts "LETTER ORGANIZER"
    getString
    
    0.upto(@sz) do |c|
      
      (c + 1).upto(@sz) do |d|
        if (array_chars[c].downcase.ord > array_chars[d].downcase.ord)
          replaceStuff(c, d)
        end
      end
      
    end
    
    print @array_chars.to_s + "\n"
    
  end 
  
end

order = Organizer.new
order.toArrayNum()
order.toArrayChar()