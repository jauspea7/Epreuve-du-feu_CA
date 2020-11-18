marches = ARGV[0]
i = 0

for i in 1..marches.to_i
	print ' ' * (marches.to_i - i)
	print '#' * i
	print "\n"
end