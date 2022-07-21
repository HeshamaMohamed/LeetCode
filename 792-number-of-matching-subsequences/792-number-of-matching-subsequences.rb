# @param {String} s
# @param {String[]} words
# @return {Integer}
def num_matching_subseq(s, words)
  # string_hash = Hash.new() {|k,v| k[v] = [] }
  # s.chars.zip(0...s.size).each { |char, index| string_hash[char] << index }
  
  # byebug
  words.count do |word|
    new_s = s
    word.chars.all? do |char|
      if new_s.include?(char)
        new_s = new_s[new_s.index(char)+1..-1]
      end
    end
  end
end