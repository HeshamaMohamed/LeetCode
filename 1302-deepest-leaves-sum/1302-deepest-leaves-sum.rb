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
def deepest_leaves_sum(root)
    tree = Hash.new {|h,k| h[k] = []}
    
    get_nodes(root, tree, 0)
    
    max_level = tree.keys.max
    tree[max_level].sum
end

def get_nodes(root, hash, level)
    hash[level] << root.val
    
    left = root.left ? get_nodes(root.left, hash, level + 1) : {}
    right= root.right ? get_nodes(root.right, hash, level + 1) : {}
end
   
   