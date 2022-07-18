# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    minimum = candies.max - extra_candies
    
    candies.map { |candy_count| candy_count >= minimum }
end