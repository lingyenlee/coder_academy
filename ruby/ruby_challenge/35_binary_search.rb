# Take the middle element, compare it to the input.
# If the middle is larger than input, focus on the right half of array. 
# If the middle is smaller than the input.
# Repeat until array can not be halved anymore.
def binary_search(arr, value)
	return [-1,0] if arr.length == 0
	times = 0
	midpoint = arr.length / 2
	worstCaseTime = Math.log2(arr.length).floor
	while times <= worstCaseTime do
		times += 1
		if arr[midpoint] == value
			return [midpoint,times]
		elsif arr[midpoint] > value
			midpoint = midpoint/2
		elsif arr[midpoint] < value
			midpoint = (arr.length - midpoint)/2 + midpoint
		end
	end
	return [arr.index(value),times]
end


puts binary_search([1,5,8,12,20,21,35], 8) 