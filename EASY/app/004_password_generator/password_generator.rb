
class PasswordGenerator
  
  # generates passwords with chars ranging from A to Z and 0 to 9
  
  def generate(pass_size)
    char_list = [('a'..'z'), ('A'..'Z'), (0..9)].map {|i| i.to_a}.flatten
    password = (1..pass_size).map {char_list[rand(char_list.length)]}.join
  end
  
end
