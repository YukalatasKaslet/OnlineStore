require_relative 'model'
require_relative 'view'

class OnlineStore

  def initialize
    @view = View.new
    @csv = CsvFiles.new
    @products = @csv.read_products
    @users = @csv.read_users
    master
  end#initialize

  def master
    option = gets.chomp
    case option 
    when "1" then aux = @view.login
    when "2" then register
    else
      puts "Come back soon!"
    end
  end#mtd master

  def register
    aux = @view.register
    @user = User.new(aux["type_user"], aux["email"], aux["password"])
    @csv.add_user(@user)

  end#register

  def type_menu(type_user)
    if type_user == "client"
      @view.products(@products, type_user)

    elsif type_user == "vendor"
      op = @view.menu_vendor(type_user)
      if op == "1"
        @view.products(@products, type_user)
      else
        sell(type_user)
      end#if vendor

    else 

    end#if
        

  end#type_menu

  def sell(type_user)
    aux = @view.sell
    product = @csv.read_products

  end#sell


  # def register   
  #   op = gets.chomp 
  #   case op
  #   when "1" then 
  #   when "2" then 
  # end

end#class OnlineStore

OnlineStore.new



