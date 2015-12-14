
output_string = ""
song = "%i bottle%s of beer on the wall, %i bottle%s of beer\nTake one down, pass it around, %i bottle%s of beer on the wall..."

# extra credit solution
99.downto(1) do |n|
  if (n > 1)
    unless (n == 2)
      output_string += song % [n, "s", n, "s", n - 1, "s"] + "\n"
    else
      output_string += song % [n, "s", n, "s", n - 1, ""] + "\n"
    end
  else # n == 1
    output_string += song % [n, "", n, "", n - 1, "s"] + "\n"
  end
end

#print output_string

# single line solution - works if you save two bottles of beer for later
99.downto(1).each {|n| print "%i bottles of beer on the wall, %i bottles of beer.\nTake one down, pass it around, %i bottles of beer on the wall..." % [n, n, (n - 1)] + "\n"}