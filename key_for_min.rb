# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    if name_hash == {}
        nil
    else
        small_value = 100000
        small_key = ""
        name_hash.collect do |key, value|
            if value <= (small_value)
                small_value = value
                small_key = key
            end
        end
        small_key
    end
end