# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
    words.count { |word| word.delete(allowed) == '' }
end