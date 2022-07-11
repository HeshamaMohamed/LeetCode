# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.map! { |num| num == val ? nil : num }.compact!
    nums.size
end