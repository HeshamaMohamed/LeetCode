# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def sum_even_grandparent(root)
    sum = []
    get_sum(root, sum)
    sum.sum
end

def get_sum(node, sum, parent = nil, grandparent = nil)
    return if node.nil?
    
    sum << node.val if grandparent
    
    get_sum(node.left, sum, node.val, parent&.even?)
    get_sum(node.right, sum, node.val, parent&.even?)
end