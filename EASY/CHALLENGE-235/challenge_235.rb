require 'prime'

class RuthAron
  
  attr_reader :pairs
  
  def initialize
    @pairs = []
  end
  
  # save pairs to array
  def askforpairs(npairs)
    1.upto(npairs) { |i|
      @pairs[i-1] = []
      puts "Enter pair number #{i}:"
      @pairs[i-1][0] = $stdin.gets.chomp.to_i
      @pairs[i-1][1] = $stdin.gets.chomp.to_i
    }
    
    puts "Pairs entered:\n" + @pairs.to_s
  end
  
  # compare and generate final output
  def checkpairs
    @pairs.each do |pair|
      primelist1 = getprimefactors(pair[0])
      primelist2 = getprimefactors(pair[1])
      #puts "Prime factors of #{pair[0]}: " + primelist1.to_s
      #puts "Prime factors of #{pair[1]}: " + primelist2.to_s
      
      # sum prime factors
      sum1 = primelist1.inject{|sum, x| sum + x}
      sum2 = primelist2.inject{|sum, x| sum + x}
      
      # compare sums
	  print "(#{pair[0]}, #{pair[1]})"
	  print " NOT" if sum1 == sum2
	  print " VALID\n"
      
    end
  end
  
  # generate list of prime factors
  def getprimefactors(num)
    pfa = num.prime_division # generates array with numbers and exponents
    size = pfa.size
    pf = [] # list for prime factors
    
    # populate pf
    1.upto(size) { |i|
      pf[pf.size] = pfa[i-1][0]
    }
    
    return pf
  end
  
end

if __FILE__ == $0
  
  if (ARGV[0])
    npairs = ARGV[0].to_i
  else
    puts "Enter number of pairs:"
    npairs = gets.chomp.to_i
  end
  
  puts "You have chosen #{npairs} pairs to test."
  
  ruth_aron = RuthAron.new
  ruth_aron.askforpairs(npairs)
  ruth_aron.checkpairs()
  
end
