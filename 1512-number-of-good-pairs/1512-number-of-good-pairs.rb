# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    nums.combination(2).count { |pair| pair[0] == pair[1] }
end