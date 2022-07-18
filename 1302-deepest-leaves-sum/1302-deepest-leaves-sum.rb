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
    
    fill_tree(root, tree, 0)
    
    max_level = tree.keys[-1]
    tree[max_level].sum
end

def fill_tree(node, tree, level)
    tree[level] << node.val
    
    fill_tree(node.left, tree, level + 1) if node.left
    fill_tree(node.right, tree, level + 1) if node.right
end