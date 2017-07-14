class LRUCache
  def initialize(capacity)
    @capacity = capacity
    @hash = Hash.new(nil)
    @queue = []
  end

  def put(k,v)
    if(@queue.size >= @capacity)
      @eject = @queue.shift
      @hash.delete(@eject)
    end
    @hash[k] = v
    @queue.push(k)
  end

  def get(k)
    @hash[k]
  end
end


