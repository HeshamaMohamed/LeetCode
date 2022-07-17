# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
    digits = num.digits.sort
    # pair_1, pair_2 = [], []
    
    pair_1 = [digits[0]] + [digits[2]]
    pair_2 = [digits[1]] + [digits[3]]
    
    pair_1.join.to_i + pair_2.join.to_i
    
end