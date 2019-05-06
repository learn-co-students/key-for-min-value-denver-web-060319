# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
	keep = nil
	name_hash.each do |key, value|
		if keep == nil
			keep = key
		end

		if name_hash[keep] > value
			keep = key
		end
	end
	keep
end