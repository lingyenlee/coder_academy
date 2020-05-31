def isReflexive?(pairs)
    xs = pairs.map {|x,y| x}
    ys = pairs.map {|x,y| y}
    xs.each do |x|
        return false if !ys.include?(x)   
    end
    return true
end

def isSymmetric?(pairs)
    pairs.each do |x,y|
        return false if not pairs.include?([y,x])
    end
    return true
end

def isTransitive?(pairs)
    pairs.each do |pair|
        x,y = *pair
        yzs = pairs.filter {|a,b| a==y}
        yzs.each do |y,z|
          return false if not pairs.include?([x,z])
        end
    end
    return true
end