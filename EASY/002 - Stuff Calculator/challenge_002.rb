
class CustomCalc
  
  attr_reader :check_action # boolean
  
  def initialize
    @list_methods = {
      "BMI" => "Body Mass Index",
      "SPEED" => "Medium Speed",
      "TRI" => "Triangle Area",
      "EXIT" => "Close Calculator"
    }
    @check_action = false
  end
  
  # used for accessing other methods
  def listOptions
    
    puts "Hello. This calculator has the following options."
    
    while (!@check_action)
      puts "\nChoose what you want to calculate:"
      listMethods
      action = gets.chomp.upcase
      case action
        when "BMI"
          bodyMassIndex
        when "SPEED"
          mediumSpeed
        when "TRI"
          triangleArea
        when "EXIT"
          @check_action = true
        else
          puts "Not a valid entry. Please check again your options."
      end
    end
    
    puts "Goodbye."
  end
  
  def listMethods
    @list_methods.each do |key, value|
      print key + " => " + value + "\n"
    end    
  end
  
  def bodyMassIndex
    
    puts "Insert the weight (kg):"
    weight = gets.chomp.to_f
    puts "Insert the height (centimeters):"
    height = gets.chomp.to_f / 100
    
    bmi = weight / (height * height)
    puts "Body Mass Index is #{'%.4f' % bmi}."
    
  end
  
  def mediumSpeed
    
    puts "Insert the distance (km):"
    distance = gets.chomp.to_f
    puts "Insert the time (hours):"
    time = gets.chomp.to_f
    
    speed = distance / time
    puts "Medium speed is #{'%.2f' % speed} km/h."
    if (speed >= 200)
      puts "Be careful. Don't drive too fast."
    end
    
  end
  
  def triangleArea
    
    puts "Insert base value (cm)"
    base = gets.chomp.to_i
    puts "Insert height value (cm)"
    height = gets.chomp.to_i
    
    area = (base * height) / 2
    puts "Triangle area is #{'%.2f' % area}."
    
  end
  
end

calc = CustomCalc.new
calc.listOptions