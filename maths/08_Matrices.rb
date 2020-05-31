def add_matrix(m1,m2)
	return nil if rows(m1) != rows(m2) || cols(m1) != cols(m2) 
	result = []
	m1.each_with_index do |row,rowIndex|
		if cols(m1) > 0
			result[rowIndex] = []
			row.each_with_index do |val,colIndex|
				result[rowIndex][colIndex] = val + m2[rowIndex][colIndex]
			end
		else
			result[rowIndex] = row + m2[rowIndex]
		end
	end
	return result
end

def rows(matrix)
	matrix.length
end

def cols(matrix)
	matrix[0].kind_of?(Array) ? matrix[0].length : 0
end