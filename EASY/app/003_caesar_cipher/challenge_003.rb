require_relative 'caesar_cipher.rb'

class ExecuteCaesarCipher
  
  attr_accessor :input_string, :num_skip
  
  def initialize
    @cc = CaesarCipher.new()
  end
  
  def getString
    puts "Write the sequence of characters you want to convert."
    @input_string = gets.chomp
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
    
    output_string = @cc.encodeString(@input_string, @num_skip)
    
    puts "Your sequence encoded is:\n" + output_string
  end
  
  def decodeString
    puts "\nDECODE SEQUENCE\n"
    getString
    
    output_string = @cc.decodeString(@input_string, @num_skip)
    
    puts "Your sequence decoded is:\n" + output_string
  end
  
end

cipher = ExecuteCaesarCipher.new
cipher.numberCipher
#cipher.encodeString
cipher.decodeString