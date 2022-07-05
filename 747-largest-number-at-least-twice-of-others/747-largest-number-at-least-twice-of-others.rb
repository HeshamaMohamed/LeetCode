# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
    return 0 if nums.length == 1
    
    max_num = nums.max
    max_index = nums.index(max_num)
    nums.uniq!
    nums.delete(nums.max)
    
    return -1 if nums.any? { |num| max_num < num*2 }
    
    return max_index
    
end