require_relative 'model'
require_relative 'view'

class OnlineStore

  def initialize
    @view = View.new
    @user = User.new
    master
  end#initialize

  def master
    option = gets.chomp
    case option
    when "1"    then @user.login
    when "2" then @user.new_user
    else
      puts "Come back soon!"
    end
  end#mtd master


end#class OnlineStore

OnlineStore.new