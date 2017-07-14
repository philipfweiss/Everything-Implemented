class Point
  attr_accessor :x, :y
  alias_method :eql?, :==

  def initialize(x,y)
    @x = x
    @y = y
  end

  def eql?(other)
    @x == other.x and @y == other.y
  end

  def == (other)
    @x == other.x and @y == other.y
  end

  def hash
    state.hash
  end

  private

  def state
    [@x, @y]
  end
end