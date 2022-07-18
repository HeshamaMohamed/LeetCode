# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
    sorted_stones = stones.chars.sort
    sorted_jewels = jewels.chars.sort
    sorted_stones.count { |stone| sorted_jewels.include?(stone) }
end