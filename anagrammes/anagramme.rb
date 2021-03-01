if (ARGV.length < 2)
	puts "#{__FILE__} requires two arguments: #{__FILE__} word & list_of_words"
	exit
end

word = ARGV[0]
list_of_words = ARGV[1]

list = []
index = 0
File.foreach(list_of_words) { |line| list[index] = line.chomp; index += 1 }

word = word.split('').sort.join('')

i = 0
while (i < list.count - 1)
	if (list[i].split('').sort.join('') == word)
		puts list[i]
	end
	i += 1
end