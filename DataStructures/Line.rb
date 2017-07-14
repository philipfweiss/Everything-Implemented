require '../DataStructures/Point'

class Line
  attr_accessor :p1, :p2
  alias_method :eql?, :==
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  ## Assuming the line makes up a diagonal of a rectangle, returns the opposite diagonal.
  def get_opposite_in_rect
    Line.new(Point.new(@p1.x, @p2.y), Point.new(@p2.x, @p1.y))
  end

  def height
    (@p1.y - @p2.y).abs
  end

  def width
    (@p1.x - @p2.x).abs
  end

  def length
    Math.sqrt(width**2 + height**2)
  end

  def eql?(other)
    @p1.eql?(other.p1) and @p2.eql?(other.p2)
  end

  def == (other)
    @p1 == other.p1 and @p2 == other.p2
  end

  def hash
    state.hash
  end

  private

  def state
    [@p1, @p2]
  end
end