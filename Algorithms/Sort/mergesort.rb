def mergesort(arr, i, j)
  return [] if(j < i)
  return [arr[j]] if j == i
  arr1 = mergesort(arr, i, (i+j)/2)
  arr2 = mergesort(arr,((i+j)/2) + 1, j)
  merge(arr1, arr2)
end

def merge(arr1, arr2)
  ans = []
  index1 = 0
  index2 = 0
  while index1 < arr1.size or index2 < arr2.size
    if index1 >= arr1.size
      ans << arr2[index2]
      index2+=1
      next
    end

    if index2 >= arr2.size
      ans << arr1[index1]
      index1+=1
      next
    end

    if arr1[index1] < arr2[index2]
      ans << arr1[index1]
      index1+=1
      next
    else
      ans << arr2[index2]
      index2+=1
      next
    end
  end
  ans
end
