class View

  def initialize
    puts "Welcome to the online store: tu-tiendita, (www.tu-tiendita.com)"
    puts "----------------------------------------------------------------------"
    puts "Select option number:"
    puts "1. Login\n2.Register\n3.Exit"
  end#initialize

  def login
    aux = {}
    puts "email:"
    aux["email"] = gets.chomps.downcase
    puts "password"
    aux["password"] = gets.chomps
    aux
  end

  def register
    aux = {}
    puts "Select option:"
    puts "Client\nVendor"
    aux["type_user"] = gets.chomp.downcase
    puts "email:"
    aux["email"] = gets.chomps.downcase
    puts "password"
    aux["password"] = gets.chomps
    aux 
  end
 


end#class

=begin
  los usuarios se loguean,
  la pantalla va en el view y regresa el valor
  hacer un metodo en controller que me reciba el valor de view
  cambiar en mi case de controller al metodo de login
    en el login recibir lo de view y hacer que lea el csv
    el csv al leer debe crear los objetos para manipular objetos
    el csv debe regresar un arreglo de objetos del tipo indicado segun el
    csv file que lee
    una vez creado el arreglo de objetos debe comparar sus atributos en controller
    y ubicarse en el objeto y tipo de user que encuentre, comparar email y contraseña
    el registro 
    el view debe imprimir y recibir para despues mandar al controller los datos
    se debe instanciar el objeto y reescribir el csv de usuarios
    
    segun el user se debe 
    admin: ve todos los usuarios,
    ve todo los productos y puede borrar e ingresar productos
    el vendedor solo puede ver productos e ingresar
    el comprador solo puede visualizar productos

  
=end