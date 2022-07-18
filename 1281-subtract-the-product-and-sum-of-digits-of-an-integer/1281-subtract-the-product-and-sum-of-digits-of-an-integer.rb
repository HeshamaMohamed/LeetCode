# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
    digits = n.digits
    
    digits.inject(&:*) - digits.sum
end