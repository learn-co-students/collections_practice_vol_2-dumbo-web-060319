# your code goes here

def begins_with_r(tools)
  tools.each do |tool|
    if tool[0].downcase != "r"
      return false 
    end
  end
  true
end

def contain_a(arr)
  a_list = []
  arr.each do |ele|
    a_list << ele if ele.downcase.include?("a")
  end
  a_list
end

def first_wa(arr)
  arr.each do |ele|
    return ele if ele[0..1].downcase == "wa"
  end
end

def remove_non_strings(arr)
  arr.reject { |ele| ele.class != String } 
end

def count_elements(array)
  arr = []
  count = Hash.new(0)
  array.each do |name|
    count[name] += 1
  end
  count.each do |name, num|
    name.each do |k, v|
      arr << {k => v, :count => num}
    end
  end
  return arr
end

def merge_data(keys, data)
 merge = []
  data.each do |hash|
    hash.each do |name, stats|
      keys.each do |key|
        merge << key.merge(stats) if key.values[0] == name
      end
    end
  end
  merge 
end

def find_cool(hash_arr)
  cool = []
  hash_arr.each do |hash|
    if hash[:temperature] == "cool"
      cool << hash
    end
  end
  cool
end

def organize_schools(schools_hash)
  sorted = {}
  
  schools_hash.map do |name, location|
    location.map do |key, city|
      if sorted.has_key?(city)
        sorted[city] << name
      else
        sorted[city] = []
        sorted[city] << name
      end
    end
  end
  sorted
end