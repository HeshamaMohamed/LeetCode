# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    left_sum = 0
    sum = nums.sum
    
    nums.each_with_index do |current_number, index|

        right_sum = (sum - current_number) / 2.0
        
        return index if left_sum == right_sum
        
        left_sum += current_number
    end
    
    return -1
end

