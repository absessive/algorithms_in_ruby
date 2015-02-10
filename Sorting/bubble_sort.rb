# Bubble Sort Algorithm in Ruby
# Sort an array with even number of elements using Bubble Sort

def bubble_sort(list)
	loop do 
		swapped = false
		(list.size-1).times do |i|			
			if list[i] > list[i+1]
				list[i], list[i+1] = list[i+1], list[i]
				swapped = true				
			end			
		end
		break unless swapped
	end 
	list 
end

=begin
54312
- 45312
- 43512
- 43152
- 43125

- 34124
- 31425
- 31245

- 13245
- 12345


	
=end

puts bubble_sort([5, 4, 3, 1, 2])