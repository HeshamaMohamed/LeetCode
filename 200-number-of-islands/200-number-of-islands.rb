# @param {Character[][]} grid
# @return {Integer}
DISCOVERED = '2'.freeze
LAND = '1'
def num_islands(grid)
    return 0 if grid.empty?
    
    islands_count = 0
    rows = grid.size
    columns = grid[0].size
    
    rows.times do |row|
        columns.times do |col|
        next if discovered_or_water(row, col, grid)
            discover_land(row, col, grid)
            islands_count += 1
        end
    end

    islands_count
end

def discover_land(row, col, grid)
    return if discovered_or_water(row, col, grid)
    
    mark_discovered(row, col, grid)
    
    discover_neighbors(row, col, grid)
end

def discovered_or_water(row, col, grid)
    row < 0 ||
    col < 0 ||
    row >= grid.size ||
    col >= grid[0].size ||
    grid[row][col] != '1' 
end

def mark_discovered(row, col, grid)
    grid[row][col] = DISCOVERED
end

def discover_neighbors(row, col, grid)
    discover_land(row+1, col, grid)
    discover_land(row-1, col, grid)
    
    discover_land(row, col+1, grid)
    discover_land(row, col-1, grid)
end