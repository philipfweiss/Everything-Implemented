## TODO: Implement a heap.

class Heap
  def initialize (array)
    @heap_array = []
    unless array.nil?
      array.each do |item|
        insert_heap (item)
      end
    end
  end

  def insert_heap (item)

  end

  def pop_heap

  end


end

#          1
#       4     5
#     6   6 6   6
#
#