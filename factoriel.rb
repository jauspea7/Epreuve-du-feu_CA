if (ARGV.length != 1)
	puts "#{__FILE__} requires one argument: #{__FILE__} number"
	exit
end

#factoriel c'est n * !(n-1)

def factoriel(n)
	if (n <= 1)
	  return (1)
	end
	 return (n * factoriel(n - 1))
end

int = ARGV[0].to_i
puts factoriel(int)