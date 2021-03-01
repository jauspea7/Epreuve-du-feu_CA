if (ARGV.length != 1)
	puts "#{__FILE__} requires one argument: #{__FILE__} number"
	exit
end

def factoriel(n)
	if (n <= 1)
		return(1)
	end
	return (n * factoriel(n - 1))
end

number = ARGV[0].to_i
res = factoriel(number).to_s

i = 0
while (1 < res.length)
	print res[i]
	if ((i + 1) % 3 == 0)
		print ','
	end
	i += 1
end		