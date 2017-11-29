require 'bigdecimal/math'

class PiCalculator
  
  def calculate(num)
    x1 = BigDecimal.new("1")
    pi_num = BigMath.atan(x1, num) * 4
    format(pi_num, num)
  end
  
  def format(pi_num, num)
    @pi_str = pi_num.to_s[2] + "." + pi_num.to_s[3..num + 2]
  end
  
  def saveTxt # if you want to save large numbers
    sep = @pi_str.scan(/.{150}/)
    filename = "output.txt"
    File.open filename, 'w' do |f|
      sep.each do |s|
        f.write s + "\n"
      end
    end
  end
  
end