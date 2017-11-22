require_relative 'password_generator.rb'

class Password
  
  attr_accessor :num_passwords
  
  def initialize
    @pg = PasswordGenerator.new()
  end

  def getNumber
    puts "How many passwords do you want to generate?"
    @num_passwords = gets.chomp.to_i
  end
  
  def generate
    
    1.upto(@num_passwords) do |num|
      puts "Password #{num}\nHow many digits for this password?"
      pass_size = gets.chomp.to_i
      
      password = @pg.generate(pass_size)
      puts "Password #{num} is:\n#{password}"
    end
    
  end
  
end

pass = Password.new()
pass.getNumber
pass.generate
