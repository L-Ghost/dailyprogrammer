
class PasswordTest
  
  attr_reader :user, :password
  attr_accessor :user_check, :password_check
  
  def initialize
    f = File.open("signin.txt", "r")
    info = f.gets.split("|")
    @user = info[0]
    @password = info[1]
  end
  
  def login
    getCredentials
    verify
  end
  
  def getCredentials
    puts "Insert User:"
    @user_check = gets.chomp
    puts "Insert Password:"
    @password_check = gets.chomp
  end
  
  def verify
    if (@user_check == @user && @password_check == @password)
      loggedIn
    else
      puts "Invalid username or password."
    end
  end
  
  def loggedIn
    puts "Logged in. Welcome, #{@user}."
  end
  
end

pass = PasswordTest.new
pass.login