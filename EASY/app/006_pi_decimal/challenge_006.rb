require_relative 'pi_calculator.rb'

pi = PiCalculator.new
puts "How many digits of PI do you want to see?"
num = gets.to_i
puts pi.calculate(num)
#pi.saveTxt
