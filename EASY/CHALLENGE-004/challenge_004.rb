
class PasswordGenerator
  
  attr_accessor :num_passwords, :pass_size
  
  def getNumber
    puts "How many passwords do you want to generate?"
    @num_passwords = gets.chomp.to_i
  end
  
  def generate
    
    1.upto(@num_passwords) do |num|
      
      puts "Password #{num}\nHow many digits for this password?"
      @pass_size = gets.chomp.to_i
      
      char_list = [('a'..'z'), ('A'..'Z'), (0..9)].map {|i| i.to_a}.flatten
      password = (1..@pass_size).map {char_list[rand(char_list.length)]}.join
      
      puts "Password #{num} is:\n#{password}"
      
    end
    
  end
  
end

pass = PasswordGenerator.new
pass.getNumber
pass.generate