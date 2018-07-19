
puts "Ingrese Nombre o 'quit': "
registro = gets.chomp
hash = {}

until registro == 'quit' do

    puts "Ingrese Teléfono: "
    phone = gets.chomp
    #hash.store(:nombre, registro)
    #hash.store(registro, phone)
    hash[registro] = phone
    puts "Ingrese Nombre o 'quit': "
    registro = gets.chomp
    
end
puts hash