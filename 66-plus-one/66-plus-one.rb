# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    zeros_count = digits.length - 1
    multiply_zeros = 10**zeros_count
    number = 0
    
    digits.each_with_index do |digit, index|
        multiply_by = multiply_zeros.to_s[0..zeros_count-index].to_i
        number += digit * (multiply_by)
    end
    
    number += 1
    number.to_s.split('').map(&:to_i)
end