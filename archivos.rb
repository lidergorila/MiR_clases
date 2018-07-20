
arr = IO.readlines("archivo1.txt")
arr2 = []
arr.each do |lines|
    #puts lines
    arr2.push lines.chomp if lines.to_i < 10
end
puts arr2
File.write("archivo2.txt", arr2.join("\n"))
#puts arr