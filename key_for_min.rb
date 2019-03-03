# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.length == 0
    nil
  else
    smallest_num = nil
    smallest_num_key = nil
    name_hash.collect do |key, value|
      if smallest_num == nil
        smallest_num = value
        smallest_num_key = key
      elsif smallest_num > value
        smallest_num = value
        smallest_num_key = key
      end
    end
    smallest_num_key
  end
end