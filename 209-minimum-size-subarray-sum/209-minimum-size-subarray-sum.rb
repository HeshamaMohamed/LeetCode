# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
  min_length = nums.length + 1
  left_idx = right_idx = sum = 0
    
  while right_idx < nums.length
    sum += nums[right_idx]
    right_idx += 1
    
    while sum >= target
      min_length = [min_length, right_idx - left_idx].min
      sum -= nums[left_idx]
      left_idx += 1
    end
  end

  min_length < nums.length + 1 ? min_length : 0
end