# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows.zero?
  arrays = [[1], [1, 1]]
  return [arrays.first] if num_rows == 1
  return arrays if num_rows == 2

  
  # filling values
  num_rows.times do |row_idx|
    next if row_idx < 2
    arrays << Array.new(row_idx + 1)
    arrays.last.map!.with_index {|cell, cell_idx| sum_parents_value(arrays, cell_idx, row_idx - 1) }
  end
  arrays
end

def sum_parents_value(arrays, cell_idx, parents_row_idx )
  sum = 0
  sum += arrays[parents_row_idx][cell_idx - 1] if cell_idx > 0
  sum += arrays[parents_row_idx][cell_idx] || 0
end