# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, RETURN the KEY for the SMALLEST VALUE
# if hash = [] return nil.


def key_for_min_value(name_hash)

  if name_hash == {}
    return nil

  else

    min_value_storage = [] # initial value for min.
    min_key_storage = [] # initial value for min.

    name_hash.each do |key, value| # go through each value and push the lowest.

      if min_value_storage == []
        min_value_storage.push(value)
        min_key_storage.push(key)

      elsif value < min_value_storage[0]
        min_value_storage.replace([value])
        min_key_storage.replace([key])

      end # end of if statement using .each ## we now have an actual min.

    end # end of each statement.

    return min_key_storage[0]
  end
end
