option = 0

registro = []

def add_person(arg)
  puts "Ingresa los siguientes datos separados por comas: Nombre, Edad, Comuna, Género"
  input = gets.split(',').map { |ele| ele.strip }
  print input 
  items = [:Nombre, :Edad, :Comuna, :Género]
  hash = items.zip(input).to_h
  arg.push(hash)
  print arg
end


while option != '10'

  puts "\tREGISTRO DE ALUMNOS"
  puts "\tIngresa una opción:"
  puts "1\tIngresar los datos de una persona"
  puts "2\tEditar los datos de una persona"
  puts "3\tEliminar una persona del registro"
  puts "4\tMostrar la cantidad de personas ingresadas"
  puts "5\tMostrar las comunas de todas las personas"
  puts "6\tMostrar una lista con todas las personas que tengan entre 20 y 25 años"
  puts "7\tMostrar la suma de las edades de todas las personas"
  puts "8\tMostrar el promedio de las edades del grupo"
  puts "9\tMostrar dos listas de personas, una por cada genero"
  puts "10\tSalir"

  option = gets.chomp

  puts case option

  when '1'
    add_person(registro)
  when '2'
    edit_person(registro)
  when '3'
    delete_person(registro)
  when '4'
    show_quantity(registro)
  when '5'
    show_place(registro) 
  when '6'
    show_2025(registro)
  when '7'
    show_sum(registro)
  when '8'
    show_average(registro)
  when '9'
    show_gender(registro)
  end

         
       


end