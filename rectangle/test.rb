if (ARGV.length < 2)
   puts "#{__FILE__} requires two arguments: #{__FILE__} square_to_find data"
   exit
end

c1 = ARGV[0]
c2 = ARGV[1]

square_to_find = []
position = 0
File.foreach(c1) { |line| square_to_find[position] = line.chomp.split('').map(&:to_i); position += 1 }
data = []
position = 0
File.foreach(c2) { |line| square_to_find[position] = line.chomp.split('').map(&:to_i); position += 1 }

puts square_to_find.inspect
puts data.inspect