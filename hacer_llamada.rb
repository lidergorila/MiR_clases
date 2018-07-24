class Telefono
    def initialize
        
    end
end

option_1 = "1. Agregar teléfono"
option_2 = "2. Buscar teléfono"
option_3 = "3. Imprimir directorio"
option_4 = "4. Salir del programa"

puts option_1
puts option_2
puts option_3
puts option_4
option = gets.chomp

while option != 4
    
    case option
    when 1
      #"It's between 1 and 5"
    when 2
      #"It's 6"
    when 3
      #"It's either foo or bar"
    when 4
      break
    else
      "You gave me #{option} -- I have no idea what to do with that."
  end

    puts option_1
    puts option_2
    puts option_3
    puts option_4

    option = gets.chomp

end