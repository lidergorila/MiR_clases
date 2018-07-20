#"Hola Mundo".split(" ")
#["Hola", "Mundo"].join("--")
#string.gsub("a_remplazar", "remplazó")
#a.count #contar palabras o char

str = gets.chomp
puts "Palabra: " + str.reverse.upcase
if str.eql?(str.reverse)
    puts "Es palindromo"
else
    puts "no es palindromo"
end

#.split("")
#.reverse.join("").upcase