

class SelectionSort
  def initialize(arr)
    @arr = arr
  end

  def sort
    selection_sort
  end

  private

  def swap(i,j)
    temp = @arr[i]
    @arr[i] = @arr[j]
    @arr[j] = temp
  end

  def selection_sort
    (0...@arr.size).each do |i|
      min = @arr[i]
      min_index = i
      (i...@arr.size).each do |j|
        if @arr[j] < min
          min = @arr[j]
          min_index = j
        end
      end
      swap(i, min_index)
    end
    @arr
  end
end
