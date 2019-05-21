# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(hash)
  min_k = nil
  min_v = nil
  hash.each do |key, value|
    min_k = key if min_k == nil
    min_v = value if min_v == nil
    if value < min_v
      min_v = value
      min_k = key
  end
end
  min_k
end