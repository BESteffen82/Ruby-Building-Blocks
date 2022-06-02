def bubble_sort(array)
	n = array.length
	swapped = true	

	until !swapped
		swapped = false
		(1...n).each do |index|
			if array[index-1] > array[index]
				array[index-1], array[index] = array[index], array[index-1]
				swapped = true
			end
		end
	end

	array
	p array	
end



bubble_sort([4,3,78,2,0,2])