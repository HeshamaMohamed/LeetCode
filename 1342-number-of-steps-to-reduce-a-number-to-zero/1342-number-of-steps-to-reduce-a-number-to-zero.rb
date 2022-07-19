# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
    binary = num.to_s(2)
    binary.length + binary.count('1') - 1
end