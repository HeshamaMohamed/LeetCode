# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    
    accum = 0
    (0...nums.size).each do |idx|
        accum += nums[idx]
        nums[idx] = accum
    end
    nums
    
    # OR
    
    # (1...nums.length).each { |idx| nums[idx] += nums[idx-1] }
    # nums
    
    # OR
    
    # nums.map!.with_index { |num, idx|  idx < 1 ? num : num + nums[idx-1] }
end