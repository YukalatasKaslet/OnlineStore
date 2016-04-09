require 'csv'

class User
  attr_accessor :email, :password, :type_user
  
  def initialize(type_user, email, password)
    @type_user = type_user
    @email = email
    @password = password
  end

end#class User



class Product
  attr_accessor :id, :name, :stock
  def initialize(id, name, stock)
    @id = id
    @name = name
    @stock = stock
  end
end#class Product




class CsvFiles

  def read_users
    users = []
    aux_array = CSV.read("users.csv")
      aux_array.each do |array|
        users << User.new(array[0], array[1], array[2])
      end#each
    users
  end#read

  def writer_users(array_objects_users)
    CSV.open("users.csv", "wb") do |csv|
      array_objects_users.each do |user|
        csv << [user[0], user[1], user[2]]
      end#each
    end#CSV
  end#mtd create_csv

  def add_user(user)
    CSV.open("users.csv", "a+") do |csv|
      csv << [user.type_user, user.email, user.password]
    end#CSV
  end#mtd add_user

  def read_products
    products = []
    aux_array = CSV.read("products.csv")
      aux_array.each do |array|
        products << Product.new(array[0], array[1])
      end#each
    products    
  end#mtd read_products

  def writer_products(array_objects_products)
    CSV.open("users.csv", "wb") do |csv|
      array_objects_products.each do |product|
        csv << [product[0], product[1], product[2]]
      end#each
    end#CSV
  end#mtd writer_products

 
  def add_product(product)
    CSV.open("product.csv", "a+") do |csv|
      csv << [product.id, product.name, product.stock]
    end#CSV
  end#mtd add_product 


end#class CvsMethods
















