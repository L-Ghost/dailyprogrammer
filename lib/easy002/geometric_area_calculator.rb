class GeometricAreaCalculator
  def rectangle(side1, side2)
    side1 * side2
  end

  def triangle(base, height)
    area = base * height
    area / 2
  end
end
