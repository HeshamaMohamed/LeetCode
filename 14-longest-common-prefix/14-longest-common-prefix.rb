# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  prefix = ''
  
  strs[0].each_char.with_index do |char, idx|
    strs.all? { |string| string[idx] == char } ? prefix += char : break
  end
  
  prefix
end