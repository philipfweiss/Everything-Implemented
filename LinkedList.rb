## This is an implementation of a very simple linked list in Ruby.

class ListNode
  attr_accessor :next
  attr_accessor :val

  def initialize(val)
    @val = val
    @next = nil
  end

end

class LinkedList
  def initialize
    @head = nil
    @last = @head
    @size = 0
  end

  def size
    @size
  end


  def push_node(val)
    new_node = ListNode.new(val)
    @last.next = new_node
    @last = new_node
    @size+=1
  end

  def print_nodes
    cur_node = @head
    until cur_node.nil?
      puts cur_node.val
      cur_node = cur_node.next
    end
  end
end

## Let's test the class down here.

