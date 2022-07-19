# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    # nums.each_slice(2).inject([]){ |decompressed, num| decompressed << Array.new(num[0], num[1]) }.flatten
    
    x = nums.each_with_index.inject([]) do |decompressed, pair|
        value, index = pair
        index.odd? ? decompressed << [value] * nums[index - 1] : decompressed
    end.flatten
    
end