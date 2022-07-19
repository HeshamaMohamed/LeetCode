# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    nums_smaller = {}
    sorted = nums.sort
    
    sorted.each_with_index {|num, idx| nums_smaller[num] ||= idx }
    
    nums.map { |num| nums_smaller[num] }
end