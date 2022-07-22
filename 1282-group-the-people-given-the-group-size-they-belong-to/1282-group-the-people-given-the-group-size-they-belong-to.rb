# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
    groups = Hash.new {|k,v| k[v] = [] }
    group_sizes.each_with_index { |group_size, n| groups[group_size] << n }
    
    groups.to_a.flat_map do |group_size, group|
      group.each_slice(group_size).to_a
    end
end