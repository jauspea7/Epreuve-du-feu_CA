if (ARGV.length != 1)
	puts "#{__FILE__} requires one argument: #{__FILE__} number_of_steps"
	exit
end	

marches = ARGV[0]
i = 0

for i in 1..marches.to_i
	print ' ' * (marches.to_i - i)
	print '#' * i
	print "\n"
end