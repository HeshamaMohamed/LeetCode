# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  index = {}

  nums.each_with_index do |num, num_idx|
    remainder_index = index[target - num]
    return [num_idx, remainder_index] if remainder_index
    index[num] = num_idx
  end
end
