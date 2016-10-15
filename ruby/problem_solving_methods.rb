def search_array(array, target)
	new_array = []
	x = 0
	while (x < array.length)
		if array[x] == target
			new_array << x
		end
		x += 1
	end
	if new_array == []
		new_array = nil
	end
	new_array
end


arr = [42, 89, 23, 1]
p search_array(arr, 1)

def fib(x)
	array = []
	if x == 0
	elsif x == 1
		array = [0]
	elsif x == 2
		array = [0, 1]
	else 
		array = [0, 1]
		counter = 2
		while (counter < x)
			array[counter] = array[counter -1] + array[counter -2]
			counter += 1
		end
	end
	array
end

p fib(100)
p fib(98)[-1] + fib(99)[-1]

   # define method that accepts an array
   # find length of array
   # loop
   #   create boolean variable that checks if something has been swapped
   #   until all items in list have been checked to be swapped
   #     /* if this pair is out of order */
   #     if A[i-1] > A[i] then
   #       /* swap them and remember something changed */
   #       change boolean variable to true if swap occurs
   #     end
   #   end for
   # until not swapped
   # end procedure

def bubblesort(list)
	n = list.length
	swapped = true
	until (swapped == false)
		swapped = false
		i = 1
		while i < n
			if list[i-1] > list[i]
				list[i],list[i-1] = list[i-1],list[i]
				swapped = true
			end
			i += 1
		end
	end
	list
end


test_array = [3, 5, 2, 7, 9, 1, 8, 10]
p bubblesort(test_array)




