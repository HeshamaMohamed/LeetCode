
def bst_to_gst(root)
    sum = [0]
    make_gst(root, sum)
    root
end

def make_gst(node, sum = 0)
    return if node.nil?
    
    make_gst(node.right, sum)
    
    node.val += sum[0]
    sum[0] = node.val
    
    make_gst(node.left, sum)
end