# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    new_key = ""
    to_check = 0
    
    name_hash.each do |key,value|
        if value > to_check
            new_key = key
            to_check = value
        end
    end
    
    name_hash.each do |key,value|
        if value < to_check
            new_key = key
            to_check = value
        end
    end
    
    if new_key.empty?
        return nil
    else
        new_key.to_sym
    end

end