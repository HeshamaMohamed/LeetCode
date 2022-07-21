# @param {String} s
# @param {String[]} words
# @return {Integer}
def num_matching_subseq(s, words)
  words.count do |word|
    new_s = s
    word.chars.all? do |char|
      new_s = new_s[new_s.index(char)+1..-1] if new_s.include?(char)
    end
  end
end