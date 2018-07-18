puts "Ingrese altura: "
altura = gets.chomp.to_f
puts "Ingrese peso: "
peso = gets.chomp.to_f

bmi = (peso / (altura ** 2)).round(2)

puts "el BMI es #{bmi}"

if bmi < 18.5
    puts "estas flaco"
elsif bmi >= 18.5 && bmi <= 25
    puts "estas bien"
else
    puts "sobrepeso"
end