class HumanMeasurementCalculator
  def body_mass_index(weight, height)
    (weight / (height * height)).round(2)
  end
end
