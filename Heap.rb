## TODO: Implement a heap.

class Heap
  def initialize (array, ordering)
    return nil unless [:min, :max].contains? ordering
    @heap_array = []
    unless array.nil?
      array.each do |item|
        insert_heap (item)
      end
    end
  end

  def insert_heap (item)
    ## Insert item at the end of the heap
    
    ## If the item is smaller than it's parent,
  end

  def pop_heap

  end


end
