# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  low_key = []
  low_value = []
  name_hash.each do |key, value|
    if low_value.length == 0
      low_value.push(value)
      low_key.push(key)
    elsif value < low_value[0]
      low_value.push(value)
      low_value.shift
      low_key.push(key)
      low_key.shift
    else
      next
    end
  end
  low_key[0]
end
