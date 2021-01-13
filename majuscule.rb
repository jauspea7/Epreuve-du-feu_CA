if (ARGV.length != 1)
	puts "#{__FILE__} requires one argument: #{__FILE__} string"
	exit
end

sentence = ARGV[0]
i = 0
res = ''
index_space = 0

while (i < sentence.length)
	if (sentence[i] != ' ')
	  if (index_space % 2 == 0)
	  	res = res + sentence[i].downcase
	  else
		res += sentence[i].upcase
	  end
	index_space += 1
	else
	  res += ' '
	end
	i += 1
end		
puts res

#sentence.each_with_index do |el, i|
#	if sentence[i] == ' '
#		print ' '
#	elsif i % 2 == 0
#		print sentence[i].downcase
#	else 
#		print sentence[i].upcase
#	end
#end	