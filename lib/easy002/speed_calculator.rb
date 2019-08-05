class SpeedCalculator
  def medium_speed(distance, time)
    (distance.to_f / time.to_f).round(2)
  end
end
