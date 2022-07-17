# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    # nums.combination(2).to_a.map {|pair| pair[0] == pair[1] ? 1 : 0 }.sum
    
    # nums.combination(2).to_a.count {|pair| pair[0] == pair[1] ? 1 : 0 }
    
    hash = Hash.new(0)
    counter = 0
    nums.each do |num|
        counter += hash[num]
        hash[num] += 1
    end
    
    counter
end