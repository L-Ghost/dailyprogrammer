
class CustomCalc
  
  def bodyMassIndex(weight, height)
    bmi = weight / (height * height)
    return bmi.round(2)
  end
  
  def mediumSpeed(distance, time)
    speed = distance / time
  end
  
  def triangleArea(base, height)
    area = (base * height) / 2
  end
  
end