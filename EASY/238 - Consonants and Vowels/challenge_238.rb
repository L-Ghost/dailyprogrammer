
class WordGenerator
  
  attr_accessor :vowel_list, :cons_list, :input_string
  
  def initialize
    @vowel_list = %w{a e i o u}
    @cons_list = %w{b c d f g h j k l m n p q r s t v w x y z}
  end
  
  def readWord
    puts "Enter the format of the word with c/C or v/V:"
    @input_string = gets.chomp
  end
  
  def generateWord
    
    output_string = ""
    @input_string.split("").each do |c|
      case c
        when "v"
          output_string += @vowel_list[rand(@vowel_list.length)]
        when "V"
          output_string += @vowel_list[rand(@vowel_list.length)].capitalize
        when "c"
          output_string += @cons_list[rand(@cons_list.length)]
        when "C"
          output_string += @cons_list[rand(@cons_list.length)].capitalize
        when " "
          output_string += " "
        else
          puts "You have informed an invalid character. Please try again."
          abort
        end
    end
    
    puts output_string
    
  end
  
end

wg = WordGenerator.new
wg.readWord
wg.generateWord