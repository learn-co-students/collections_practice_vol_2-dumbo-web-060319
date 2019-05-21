require "pry"

def begins_with_r array
  array.each do |value|
  	cmp = value.downcase
  	if !(cmp.start_with?("r"))
      return false
    end
  end
  true
end

def contain_a array
  array_of_a = []
  array.each do |value|
  	if value.include?('a')
  	  array_of_a.push(value)
  	end
  end
  array_of_a
end

def first_wa array
  array.each do |value|
    if value.to_s.include?("wa")
      return value
    end
  end
end

def remove_non_strings array
  new_array = []
  array.each do |value|
  	if value.is_a?(String)
      new_array.push(value)
    end
  end
  new_array
end

def count_elements array
  count_array = []
  array.each do |value|
  	present = false
    count_array.each do |key, val|
      if key[:name] == value[:name]
        key[:count] += 1
        present = true
      end
    end
    if !present
      count_array.push({count: 1, name: value[:name]})
    end
  end
  count_array
end

def merge_data (keys, data)
  data.each do |hash|
  	hash.each do |name, data_hash|
  	  keys = keys.each do |hashes|
  	    if hashes[:first_name] == name
  	      data_hash.each do |key, value|
  	      	hashes[key] = value
  	      end
  	    end
  	  end
  	end
  end
  keys
end

def find_cool hash_array
  array = []
  hash_array.each do |hash|
    if hash[:temperature] == "cool"
      array.push(hash)
    end
  end
  array
end

def organize_schools data
  hash_of_locations = {}
  data.each do |school, location_hash|
  	if !hash_of_locations.include?(location_hash[:location])
      hash_of_locations[location_hash[:location]] = [school]
    else
      hash_of_locations[location_hash[:location]].push(school)
    end
  end
  hash_of_locations
end