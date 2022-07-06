# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  return [] if matrix.empty?
  
  matrix.shift + spiral_order(matrix.transpose.reverse)
end