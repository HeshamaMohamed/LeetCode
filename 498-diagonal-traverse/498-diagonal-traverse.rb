# @param {Integer[][]} mat
# @return {Integer[]}
def find_diagonal_order(mat)
    row_size = mat.count
    col_size = mat.first.count
    
    diagonals = Hash.new{ |h,k| h[k] =[]}
    
    row_size.times do |row_idx|
        col_size.times do |col_idx|
          diagonals[row_idx + col_idx].append(mat[row_idx][col_idx])
        end
    end

    diagonals.flat_map do |i, values|
      values.reverse! if i%2 == 0
      values
    end
end