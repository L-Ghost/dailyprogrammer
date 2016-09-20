class LightSwitches
  
  def initialize
    puts "Input the number of light bulbs you want to play with:"
    @nlights = gets.chomp.to_i
    constructArray
  end
  
  def constructArray
    @switches = Array.new(@nlights) {"."}
    #printSwitches
    puts "All the lights are turned off.\n\n"
  end
  
  def interact
    input = ""
    while (input != "X")
      puts "To turn the switches, insert a sequence of bulbs you want to change, as this example: N N"
      puts "To exit program, insert X"
      
      input = gets.chomp
      if (input != "X")
        arrangeInput(input)
        changeSwitches
        printSwitches
        countSwitches
        puts "There are #{@count.to_s} bulbs turned on."
      end
    end
    
    puts "Thanks for playing"
  end
  
  def arrangeInput(input)
    @n1, @n2 = input.split(" ")
    @n1, @n2 = @n2, @n1 if @n1.to_i > @n2.to_i
  end
  
  def changeSwitches
    (@n1.to_i).upto(@n2.to_i) {|i|
      if (@switches[i] == ".")
        @switches[i] = "X"
      else
        @switches[i] = "."
      end
    }
  end
  
  def countSwitches
    @count = 0
    0.upto(@nlights - 1) {|i|
      @count = @count + 1 if @switches[i] == "X"
    }
  end
  
  def printSwitches # show light bulb stats
    0.upto(@nlights - 1) {|n| print n, " "}
    print "\n"
    0.upto(@nlights - 1) {|n|
      print @switches[n], " " if n < 10
      print @switches[n], "  " if (n >= 10 && n < 100)
      print @switches[n], "  " if (n >= 100 && n < 1000)
    }
    print "\n"
  end
  
end

lights = LightSwitches.new
lights.interact