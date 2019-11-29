def matrix_add(m1, m2)
  height = m1.length
  width = m1[0].length

  arr = Array.new(height) { Array.new(0) }
  
  (0...height).each do |row|
    (0...width).each do |col|
      arr[row][col] = m1[row][col] + m2[row][col]
    end
  end
  arr
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrix_add(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_add(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_add(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_add(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]