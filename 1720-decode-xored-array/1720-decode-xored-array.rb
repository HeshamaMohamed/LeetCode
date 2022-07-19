# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
    # encoded.map!.with_index  do |num, idx|
    #    idx > 0 ? num ^ encoded[idx -1] : num ^ first
    # end
    # [first] + encoded
    
    # OR
    
    encoded.inject([first]) { |result, current_num| result.push(result[-1] ^ current_num) }
end