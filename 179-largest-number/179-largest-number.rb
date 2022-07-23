# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
    return '0' if nums.all?(&:zero?)
    
    nums.map(&:to_s)
        .sort { |a, b| b + a <=> a + b }
        .join
end