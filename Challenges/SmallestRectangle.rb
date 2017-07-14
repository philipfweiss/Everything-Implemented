## Given n points scattered on a 2d plane, find the smallest axis aligned rectangle
## With corners at the given points.

require '../DataStructures/Point'
require '../DataStructures/Line'

class SmallestRectangle
  def initialize(points)
    @points = points
    @memo = Hash.new {0}
    @min = 10000000000
    @ans = []
  end

  def getSmallestRectangle
    @points.each.with_index do |p1,i|
      @points.each.with_index do |p2, j|
        @memo[Line.new(p1, p2)]+=1 if i != j
      end
    end

    @memo.each do |k,_|
      opp = k.get_opposite_in_rect
      if @memo[opp] > 0
        area = compute_rect_area(k)
        @min = [@min, area].min if area > 0.001
      end
    end

    @min
    end

    private
    def compute_rect_area(l1)
      (Math.sqrt(l1.length**2 - l1.width**2) * Math.sqrt(l1.length**2 - l1.height**2)).round

    end
end
