# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(hash)
    if hash.count < 2
        return hash[0]
    else 
        num = 42
        hash.each do |key, value|
           if value <= num
                num = value
           end
        end
        hash.invert[num] 
    end
end