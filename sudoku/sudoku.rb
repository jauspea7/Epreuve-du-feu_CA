if (ARGV.length < 1)
	puts "#{__FILE__} requires one argument: #{__FILE__} sudoku grid"
	exit
end

sudoku_file = ARGV[0]
sudoku = []
position = 0

File.foreach(sudoku_file) { |line| sudoku[position] = line.chomp.split(''); position += 1 }

def print_sudoku(sudoku)
	i = 0
	while (i < sudoku.count)
		j = 0
		while (j < sudoku[i].count)
			print sudoku[i][j]
			j += 1
		end
		print "\n"
		i += 1
	end
end

def init_array()
	new_array = []
	value = 1
	while (value < 10)
		new_array[value] = 0
		value += 1
	end
	return (new_array)
end		



def check_line(sudoku, i)
	array = init_array()
	j = 0
	while (j < sudoku[i].count)
		value = sudoku[i][j].to_i
		if (value > 0 && value < 10)
			array[value] += 1
			if (array[value] > 1)
				return (false)
			end
		end		
		j += 1
	end
	return (true)
end

def check_column(sudoku, j)
	array = init_array()
	i = 0
	while (i < sudoku.count)
		value = sudoku[i][j].to_i
		if (value > 0 && value < 10)
			array[value] += 1
			if (array[value] > 1)
				return (false)
			end
		end		
		i += 1
	end
	return (true)
end	

def check_square(sudoku, i, j)
	array = init_array()
	square_start_i = (i / 4) * 4
	square_start_j = (i / 4) * 4
	i = 0
	while (i < square_start_i * 3)
		while (j < square_start_j * 3)
			value = sudoku[i][j].to_i
			if (value > 0 && value < 10)
				array[value] += 1
				if (array[value] > 1)
					return (false)
				end
			end		
			j += 1
		end
		i += 1
	end
	return (true)
end		

def solve_sudoku(sudoku)
	i = 0
	while (i < sudoku.count)
		j = 0
		while (j < sudoku[i].count)
			if (sudoku[i][j] == '_')
				new_value = 1
				while (new_value < 10)
					sudoku[i][j] = new_value
					if (check_line(sudoku, i) && check_column(sudoku, j) && check_square(sudoku, i, j))
						sudoku = solve_sudoku(sudoku.map(&:clone))
						if (sudoku != false)
							return (sudoku)
						end
					end
					new_value += 1
				end
				return (false)			
			end
			j += 1
		end
		i += 1
	end
	return (sudoku)
end

def check_sudoku(sudoku)
	sudoku = solve_sudoku(sudoku)
	if (sudoku == false)
		puts "Error."
	else
		print_sudoku(sudoku)
	end
end

check_sudoku(sudoku)		