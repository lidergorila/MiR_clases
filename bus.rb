class Bus
    
    attr_reader :velocidad
    attr_reader :asientos
    @@total_pasajeros= 0
    def initialize(b)
        @asientos = b
        @velocidad = 0
        puts "Se inicializó con #{@asientos}"
    end

    def total_pasajeros
        puts @@total_pasajeros
    end
    
    def acelerar(a=1)
        @velocidad += a #if a != nil
        puts "Se aceleró el bus a #{@velocidad} Km/h"
    end

    def frenar
        @velocidad = 0
        puts "se frenó el bus, su velocidad es #{@velocidad} Km/h"
    end

    def recoger(persona)
        if @velocidad == 0
            @asientos = @asientos - persona
            @@total_pasajeros = @@total_pasajeros + persona
            #puts @@total_pasajeros
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
mercedes.acelerar
mercedes.acelerar(10)
mercedes.frenar
mercedes.recoger(3)
mercedes.recoger(3)
mercedes.recoger(3)
mercedes.descargar(1)
mercedes.acelerar(60)
mercedes.descargar(1)
puts mercedes.asientos
puts mercedes.velocidad
puts mercedes.total_pasajeros