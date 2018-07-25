# File.open("archivo1.txt", "r") do |f|
#     i = 1
#     f.each_line do |line|
#         puts "[#{i}] #{line}"
#         i += 1
#     end
# end
a = Time.now
puts "parar"
b = gets.chomp
c = Time.now - a
puts c