
class CustomCalc
  
  def bodyMassIndex(weight, height)
    bmi = weight / (height * height)
    bmi.round(2)
  end
  
  def mediumSpeed(distance, time)
    (distance / time).round(2)
  end
  
  def triangleArea(base, height)
    (base * height) / 2
  end
  
end
