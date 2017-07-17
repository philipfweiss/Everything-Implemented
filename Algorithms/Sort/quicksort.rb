#Puzzle: Can you spot the mistake in this code? If you can, email weissp68@stanford.edu to collect .005 BTC.

class QuickSort
  def initialize(arr)
    @arr = arr
  end

  def sort
    quick_sort(@arr)
  end

  private

  def quick_sort(arr)
    return arr if arr.size < 2
    pivot = arr.slice!(choose_pivot(arr))
    left = quick_sort(construct_left(arr, pivot))
    right = quick_sort(construct_right(arr, pivot))
    left + [pivot] + right
  end

  def choose_pivot(arr)
    random = Random.new
    random.rand(0...arr.size)
  end

  def construct_left(arr, pivot)
    arr.select {|x| x <= pivot}
  end

  def construct_right(arr, pivot)
    arr.select {|x| x > pivot}
  end
end

