# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    max = 0
    counter = 0
    nums.each do |num|
        unless num.zero?
            counter += 1
            max = counter if counter > max
            next
        end
            counter = 0
    end
    max
end