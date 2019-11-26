# Reverse a linked list using mutation

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list, previous=nil) #passing in 2 arguments, the linked list and the previous node
  if !list #this if statment allows us to see if a linked list or not exist and it also lets us know when we have reached the end of the linked list
    previous
  else
    next_node = list.next_node       #this becomes the list for the recursion
    list.next_node = previous        #this will start as nil
    reverse_list(next_node, list)    #here, the reverse_list is calling itself and passing in the 2 arguments 
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)
puts "---------"
reverse_list(node3)
print_values(node1)