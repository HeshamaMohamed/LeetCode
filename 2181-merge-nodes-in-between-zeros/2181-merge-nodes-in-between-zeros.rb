# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def merge_nodes(head)
    return nil if head.nil?
    arr = []
    curr_node = head
    
    while curr_node
        next_node = curr_node.next
        break if next_node.nil?
        
        curr_value = curr_node.val
        
        next_node.val > 0 ? next_node.val += curr_value : arr << curr_value
        
        curr_node = next_node
    end
    
    arr
end