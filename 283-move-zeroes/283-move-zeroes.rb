# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    original_size = nums.length
    nums.delete(0)
    nums.concat([0] * (original_size - nums.size))
end