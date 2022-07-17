# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
    # sentences.map(&:split).max_by(&:length).length
    
    # OR 
    
    # sentences.map { |sentence| sentence.split.length }.max
    
    # OR 
    
    sentences.map {|sen| sen.count(' ')}.max + 1

end