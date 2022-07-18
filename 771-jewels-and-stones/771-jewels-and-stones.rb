# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
    sorted_jewels = jewels.chars.sort
    stones.chars.count { |stone| sorted_jewels.include?(stone) }
    
    # used sorting for performance optimization
    # the include? method now performs faster since the probability of finding the element early increases.
end