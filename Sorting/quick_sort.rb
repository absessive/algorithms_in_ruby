# Quick Sort Algorithm in Ruby
# Sort an array with even number of elements using Quick Sort

def quicksort(list)
    bottom, top = [], []
    top[0] = 0
    bottom[0] = list.size
    i = 0
    while i >= 0 do
      l = top[i]
      r = bottom[i] - 1;
      if l < r
        pivot = list[l]
        while l < r do
          r -= 1 while (list[r] >= pivot  && l < r)
          if (l < r)
            list[l] = list[r]
            l += 1
          end
          l += 1 while (list[l] <= pivot  && l < r)
          if (l < r)
            list[r] = list[l]
            r -= 1
          end
        end
        list[l] = pivot
        top[i+1] = l + 1
        bottom[i+1] = bottom[i]
        bottom[i] = l
        i += 1
      else
        i -= 1
      end
    end
    list 
end

puts quicksort([5, 4, 3, 1, 2])