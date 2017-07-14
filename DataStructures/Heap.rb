## TODO: Implement a heap.

## Creates a (relatively inefficient) heap

class Heap
  include Enumerable
  def initialize (array, min_or_max)
    raise "Heap must be ordered"  unless [:min, :max].include? min_or_max
    @order = min_or_max
    @heap_array = []
    unless array.nil?
      array.each do |item|
        insert (item)
      end
    end
  end

  def insert (item)
    ## Insert item at the end of the heap
    @heap_array.push(item)

    ## If the item is smaller than it's parent, swap them
    cur = @heap_array.size - 1




  end

  def pop_heap

    # ## Return nil if the heap array is empty.
    # return nil if @heap_array.empty?
    #
    # ## Pull the first item off of the heap
    # ret = @heap_array[0]
    #
    # ## Swap the last item in the heap with the first
    # @heap_array[0] = @heap_array.last
    #
    # ## Bubble the
    # cur = 0


  end

end

heap = Heap.new([5], :min)
