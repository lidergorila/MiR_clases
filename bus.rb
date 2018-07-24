class Bus
    
    attr_reader :velocidad
    attr_reader :asientos
    
    def initialize(b)
        @asientos = b
        @velocidad = 0
        puts "Se inicializó con #{@asientos}"
    end
    
    def acelerar(a)
        @velocidad = a
        puts "Se aceleró el bus a #{@velocidad} Km/h"
    end

    def frenar
        @velocidad = 0
        puts "se frenó el bus, su velocidad es #{@velocidad} Km/h"
    end

    def recoger(persona)
        if @velocidad == 0
            @asientos = @asientos - persona
            puts "Se montaron #{persona} personas, en el bus hay #{@asientos} lugares disponibles"
        else
            puts "El carro está a #{@velocidad} km/h, tiene que frenar para recoger"
        end
    end

    def descargar(persona)
        if @velocidad == 0
            @asientos = @asientos + persona
            puts "Se bajaron #{persona} personas, en el bus hay #{@asientos} lugares disponibles"
        else
            puts "El carro está a #{@velocidad} km/h, tiene que frenar para descargar"
        end
    end

end

mercedes = Bus.new(10)
mercedes.acelerar(50)
mercedes.frenar
mercedes.recoger(3)
mercedes.descargar(1)
mercedes.acelerar(60)
mercedes.descargar(1)
#puts Bus:asientos
#puts Bus:velocidad
puts mercedes.asientos
puts mercedes.velocidad

# case x
# when 1..5
#   "It's between 1 and 5"
# when 6
#   "It's 6"
# when "foo", "bar"
#   "It's either foo or bar"
# when String
#   "You passed a string"
# else
#   "You gave me #{x} -- I have no idea what to do with that."
# end