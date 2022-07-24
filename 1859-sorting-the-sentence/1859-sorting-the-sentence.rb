# @param {String} s
# @return {String}
def sort_sentence(s)
    s.split
     .sort_by { |word| word[-1] }
     .map(&:chop)
     .join(' ')
end