option = 0

registro = []

def add_person(arg)
  puts "Ingresa los siguientes datos separados por comas: Nombre, Edad, Comuna, Género"
  input = gets.split(',').map { |ele| ele.strip }
  items = [:Nombre, :Edad, :Comuna, :Género]
  hash = items.zip(input).to_h
  arg.push(hash)
  print arg

end

def edit_person(arg)
  puts "Ingresa el nombre de la persona que deseas editar:"
  name = gets.chomp
  puts "Ingresa los siguientes datos separados por comas: Nombre, Edad, Comuna, Género"
  input = gets.split(',').map { |ele| ele.strip }
  items = [:Nombre, :Edad, :Comuna, :Género]
  hash = items.zip(input).to_h
  print hash
  cont = 0
  arg.each do |x|
    arg[cont] = hash if x[:Nombre] == name
    cont += 1
  end
  print arg
end

def delete_person(arg)
  puts 'Ingresa el nombre de la persona que deseas eliminar:'
  name = gets.chomp
  cont = 0
  arg.each do |x|
    arg.delete_at(cont) if x[:Nombre] == name
    cont += 1
  end
  print arg
end

def show_quantity(arg)
  puts "la cantidad de personas ingresadas es: #{arg.length}"
end

def show_place(arg)
  cont = 0
  puts 'Las comunas de las personas ingresadas en el registro son:'
  arg.each do |i|
    puts arg[cont][:Comuna]
    cont += 1
  end
end

def show_2025(arg)
  result = arg.select do |hash|
    hash[:Edad].to_i >= 20 && hash[:Edad].to_i <= 25
  end
  puts result
  cont = 0
  result2 = []
  puts "Las personas con edad entre 20 y 25 años son:"
  result.each { |i| puts i[:Nombre] }
end

def show_sum(arg)
  suma = arg.inject(0) { |sum, hash| sum + hash[:Edad].to_i }
  puts "La suma de las edades de todas las personas registradas es #{suma}"
end

def show_average(arg)
  suma = arg.inject(0) { |sum, hash| sum + hash[:Edad].to_i }
  puts "El promedio de edad de las  personas registradas es #{suma.to_f/arg.length}"
end

def show_gender(arg)
  result = arg.select do |hash|
    hash[:Género] == 'Masculino' || hash[:Género] == 'masculino'
  end
  masculino = []
  cont = 0
  result.each do |hash|
    masculino[cont] = hash[:Nombre]
    cont += 1
  end
  puts "Las personas de género masculino son #{masculino}"

  resultfem = arg.select do |hash|
    hash[:Género] == 'Femenino' || hash[:Género] == 'femenino'
  end
  femenino = []
  cont = 0
  resultfem.each do |hash|
    femenino[cont] = hash[:Nombre]
    cont += 1
  end
  puts "Las personas de género femenino son #{femenino}"
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

  case option

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