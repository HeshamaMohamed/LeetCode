# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    (s.size/2).times do |i|
        s[i], s[s.length - 1 - i] = s[s.length - 1 - i], s[i]
    end
end