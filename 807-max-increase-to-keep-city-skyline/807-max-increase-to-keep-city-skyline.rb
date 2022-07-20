# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
    rows_limit = {}
    columns_limit = {}
    
    grid.each_with_index { |row, index| rows_limit[index] = row.max }
    grid.transpose.each_with_index { |column, index| columns_limit[index] = column.max }
    
    grid.map.with_index do |row, row_idx|
        row.map.with_index do |cell, column_idx|
            [rows_limit[row_idx], columns_limit[column_idx]].min - cell
        end.sum
    end.sum
            
end