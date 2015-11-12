
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
    puts pi_str
  end
      
end

pi = PiCalculator.new