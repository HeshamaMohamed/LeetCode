# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)

  
  strs[0].each_char.with_index do |char, idx|
    unless strs.all? { |string| string[idx] == char }
        return strs[0][0...idx]
    end
  end
  
end