
require 'bigdecimal/math'

class PiCalculator
  
  attr_accessor :num
  
  def initialize
    puts "How many digits of PI do you want to see?"
    @num = gets.to_i
    calculate
  end
  
  def calculate
    x1 = BigDecimal.new("1")
    pi_num = BigMath.atan(x1, @num) * 4
    format(pi_num)
  end
  
  def format(pi_num)
    pi_str = pi_num.to_s[2] + "." + pi_num.to_s[3..@num + 2]
    #saveTxt(pi_str)
    puts pi_str
  end
  
  def saveTxt(pi_str) # if you want to save large numbers
    sep = pi_str.scan(/.{150}/)
    filename = "output.txt"
    File.open filename, 'w' do |f|
      sep.each do |s|
        f.write s + "\n"
      end
    end
  end
  
end

pi = PiCalculator.new