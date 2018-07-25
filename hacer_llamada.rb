class Telefono

  @@dispositivos = 0
  @@tiempo_total = 0

     def initialize
      @@dispositivos += 1
        @directorio = {}
        @historial = {}
        @en_llamada
        @call = false
        @start_call
     end

     def dispositivos
      @@dispositivos
     end

     def tiempo_total
      @@tiempo_total
     end

     def importar
      #Un método que permita Importar un archivo del texto 
      #el cual contiene en cada linea nombre y teléfono 
      #(separado por punto y coma), la información debe ser 
      #importada a un hash llamado “directorio”
      arr = IO.readlines("archivo1.txt")
      arr1 = []
      arr.each do |line|
        arr1 = line.split(';')
        @directorio[arr1[0]] = arr1[1].chomp
      end
      #puts @hash
     end

     def imprimir 
      #Un método que permita imprimir todo los nombres y usuarios del directorio.
      importar
      puts @directorio
      # arr = IO.readlines("archivo1.txt")
      # arr.each do |line|
      #   puts line.split(';')
      # end
     end

     def agregar (name, phone)
      #Que tenga un método que permita agregar un usuario con su 
      #respectivo telefono al hash “directorio” y también al archivo de texto.
      File.open("archivo1.txt", 'a') { |file| file.puts(name + ';' + phone) }
      imprimir
     end

     def retorna_telefono (name)
      #Que tenga un metodo que reciba el nombre del usuario y retorne su teléfono.
      importar
      if @directorio.has_key?(name)
        puts "El teléfono es: "
        puts @directorio[name]
      else
        puts "No existe el contacto"
      end
      
     end

     def llamar (name)
      # 1. hacer un llamada (no se puede hacer una llamada si el teléfono esta ocupado)
      importar
      if @call == false && @directorio.has_key?(name)
        @call = true
        @start_call = Time.now
        @en_llamada = name
        puts "En llamada con #{name}...¿Hola?"
      else
        puts "Actualmente hay una llamada..." if @call == true
        puts "No existe contacto..." if @directorio.has_key?(name) == false && @call == false
      end
     end

     def show_call
      # 2. mostrar llamada actual (nombre y numero)
      if @call
        aux = Time.now - @start_call
        puts "En llamada con #{@en_llamada} y lleva #{aux} segundos"
        puts "Su número es #{@directorio[@en_llamada]}"
      else
        puts "No hay llamada actual..."
      end
     end

     def colgar
      if @call
        tiempo = Time.now - @start_call
        File.open("historial.txt", 'a') { |file| file.puts('Nombre: ' + @en_llamada + ' Tiempo de llamada: ' + tiempo.to_s + ' Fecha: ' + Time.now.to_s) }
        @call = false
        @@tiempo_total = @@tiempo_total + tiempo
        puts "Se colgó la llamada con #{@en_llamada}..."
      else
        puts "Ya está colgado..."
      end
     end

     def historial
      arr = IO.readlines("historial.txt")
      arr.each do |line|
        puts line.split(';')
      end
     end

end

# 4. mostrar historial de llamadas, cada llamada almacena la duración de la misma.
# Nota: Complementar el ejercicio con el propuesto para el fin de semana pasado.

#Al ejecutarse el programa se carga automáticamente el archivo de texto, 
#debe preguntarle que quiere hacer:  Agregar un teléfono, Buscar un teléfono,  
#imprimir el directorio completo ó salir.

#File.open("bd/students.txt", 'a') { |file| file.puts("juan camilo") }

puts "1. Agregar teléfono"
puts "2. Buscar teléfono"
puts "3. Imprimir directorio"
puts "4. Salir del programa"
puts "5. Hacer una llamada"
puts "6. Mostrar llamada actual"
puts "7. Colgar llamada"
puts "8. Historial de llamadas"
puts "9. Mostrar Datos"

@option = gets.chomp.to_i

phone = Telefono.new

while @option != 4 do

  #puts "entró"
    case @option
    when 1
      #"It's between 1 and 5"
      #break
      phone = Telefono.new
      puts "Ingrese nombre: "
      nom = gets.chomp
      puts "Ingrese teléfono: "
      pho = gets.chomp
      phone.agregar(nom,pho)
    when 2
      #"It's 6"
      #break
      puts "Escribe el nombre del contacto: "
      name = gets.chomp
      phone.retorna_telefono(name)
    when 3
      #"It's either foo or bar"
      #break
      #phone.importar
      phone.imprimir
    when 4
      break
    when 5
      puts "Escribe el nombre del contacto: "
      a_name = gets.chomp
      phone.llamar(a_name)
    when 6
      phone.show_call
    when 7
      phone.colgar
    when 8
      phone.historial
    when 9
      puts "Tiempo total de llamadas: #{phone.tiempo_total}"
      puts "Dispositivos creados: #{phone.dispositivos}"
    else
      puts "Me diste #{@option} -- No tengo ni idea de que hacer con eso."
      #break
  end

  puts "1. Agregar teléfono"
  puts "2. Buscar teléfono"
  puts "3. Imprimir directorio"
  puts "4. Salir del programa"
  puts "5. Hacer una llamada"
  puts "6. Mostrar llamada actual"
  puts "7. Colgar llamada"
  puts "8. Historial de llamadas"
  puts "9. Mostrar Datos"
  
  @option = gets.chomp.to_i

end