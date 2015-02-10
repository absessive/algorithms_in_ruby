# Insertion Sort Algorithm in Ruby
# Sort an array with even number of elements using Insertion Sort

def insertion_sort(list)	
	return list if list.size < 2
	(1..list.count-1).each do |i|
		value = list[i]
		j = i-1
		while j >=0 && list[j] > value
			list[j+1] = list[j]
			j = j-1
		end
		list[j+1] = value
	end
	list
end		

puts insertion_sort [5,2,4,6,1,3]