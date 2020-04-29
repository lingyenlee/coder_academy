def union(set1, set2) 
	# set1 and set2 are arrays
    # return the union
    
    u = set1 << set2
    return u.flatten.uniq.to_s
end

puts union([1,2,3], [3,4,5])   # should return [1,2,3,4,5]
puts union(["a", "b", "c"], ["d", "e", "f"]) # should return ["a", "b", "c", "d", "e", "f"]

def intersection(set1, set2)
	# set1 and set2 are arrays
    # return the intersection
    
    inter= []

    if set1.length > set2.length
        set1.map {|x| set2.include?(x) ? inter.push(x) : nil}
    else 
        set2.map {|x| set1.include?(x) ? inter.push(x) : nil}
    end
    return inter

end
puts intersection([1,2,3],[3,4,5])  # should return [3]


def symmetric_difference(set1, set2)
	# set1 and set2 are arrays
    # return the symmetric difference
    
    # if set1.length >= set2.length
        set1.map.with_index do |x, i|
            if set2.include?(x)
                 set2.delete(x)
                 set1.delete(x)
                 
             end
        end
        u = set1 << set2
        return u.flatten.uniq

end

puts symmetric_difference([1,2,3],[3,4,5]) # should return [1,2,4,5]