def unique_values (array)
   uniq_arr = []
   array.each do |item|
        if !uniq_arr.include?(item)
            uniq_arr.push(item)
        end
   end
   return uniq_arr
end

puts unique_values([1, 2, 3, 3]) #should return [1,2,3]
puts unique_values(["tom", "tom", "tom"]) #should return ["tom"]
puts unique_values(["which", "Which", "WITCH", "witch", "twitch", "twitch"]) #should return ["which", "Which", "WITCH", "witch", "twitch"]