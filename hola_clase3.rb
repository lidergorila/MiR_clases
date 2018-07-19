# array = [1,2,3]
# array.each do |elements|
#    puts elements
# end
# a = 5
#   ARGV.times do |arg|
#       puts arg = rand(100)
#   end
a = gets.chomp.to_i
array = []

a.times do |i|
    array.push(rand(100))
    puts array[i]
end

#Suma de los números y promedio
aux = 0
a.times do |i|
    aux = aux + array[i]
end
puts "Suma #{aux} y promedio #{aux/a}"

