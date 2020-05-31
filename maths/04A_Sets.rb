def intersection(set1, set2)
	result = []
	set1.each do |ele|
		set2.include?(ele) && result.push(ele)
	end
	return result
end

def union(set1, set2) 
	result = set1 + set2
	return result.uniq	
end

def symmetric_difference(set1, set2)
	return union(set1-set2, set2-set1)
end