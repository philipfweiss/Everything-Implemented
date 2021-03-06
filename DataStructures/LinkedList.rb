## Philip Feldman Weiss - 10/18/2016
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

  ## Initializes LinkedList Class
  def initialize(val)
    @head = ListNode.new(val)
    @last = @head
    @size = 0
  end

  ## Returns the size of the LinkedList
  def size
    @size
  end

  ## Adds a new node to the end of the LinkedList
  def push_node(val)
    new_node = ListNode.new(val)
    @last.next = new_node
    @last = new_node
    @size+=1
  end

  def get_next(node)
    node.nil? ? nil : node.next
  end


  ## Get the nth node from the LinkedList
  def get_node(int)
    cur_node = @head
    int.times do
      cur_node = cur_node.next
      if cur_node.nil?
        return nil
      end
    end
    cur_node
  end

  def head
    @head
  end

  def last
    @last
  end

  ## Print all the nodes in the LinkedList
  def print_nodes
    cur_node = @head
    until cur_node.nil?
      puts cur_node.val
      cur_node = cur_node.next
    end
  end
end