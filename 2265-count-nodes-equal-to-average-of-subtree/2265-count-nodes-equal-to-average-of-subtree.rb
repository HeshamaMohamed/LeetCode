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
def average_of_subtree(root)
    avg_count = []
    dfs(root, avg_count)
    avg_count.length
end

def dfs(root, avg_count, values = [])
    return nil if root.nil?

    left_count = dfs(root.left, avg_count, values) || 0
    right_count = dfs(root.right, avg_count, values) || 0
    
    nodes_count = left_count + right_count + 1
    values << root.val
    
    sum = values.last(nodes_count).sum
    avg = sum / nodes_count
    
    avg_count << 1 if root.val == avg
    
    nodes_count
end

