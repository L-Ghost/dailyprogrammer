
class Morse
  
  def initialize
    @morse_index = {'.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g', '....' => 'h', '..' => 'i',
      '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's',
      '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y', '--..' => 'z', '/' => ' '} # 26 characters + space
  end
  
  def translateMorse # convert morse to letters
    
    getCode(" morse ")
    output_string = ""
    
    @input_string.split(" ").each do |l|
      if (!@morse_index[l])
        puts "There's an invalid character in your code -> #{l}"
        output_string += "#"
      else
        output_string += @morse_index[l]
      end
    end
    
    puts output_string
    
  end
  
  def toMorse # convert letters to morse
    
    getCode
    output_string = ""
    
    @input_string.downcase.split("").each do |c|
      if (@morse_index.key(c))
        output_string += @morse_index.key(c) + " "
      else
        puts "No translation found for this character -> #{c}"
      end
    end
    
    puts output_string
    
  end
  
  def getCode(morse = " ")
    puts "Insert the#{morse}code you want to translate."
    @input_string = gets.chomp
  end
  
end

morse = Morse.new
morse.translateMorse
morse.toMorse
