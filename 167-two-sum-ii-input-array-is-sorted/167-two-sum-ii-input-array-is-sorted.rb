# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    left, right = 0, numbers.size - 1
    
    while left < right
        if numbers[left] + numbers[right] == target
            return [left + 1, right + 1 ] 
        elsif numbers[left] + numbers[right] > target
            right -= 1
        else
            left += 1
        end
    end
    
end