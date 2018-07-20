puts "Ingrese Nombre o 'quit': "
registro = gets.chomp
@hash = {}
def registry_agenda(a, b)
    #hash.store(a, b)
    @hash[a] = b
end
until registro == 'quit' do

    puts "Ingrese Teléfono: "
    aux = gets.chomp
    @hash = registry_agenda(registro, aux)
    #hash.store(registro, phone)
    puts "Ingrese Nombre o 'quit': "
    registro = gets.chomp
    
end

puts hash

