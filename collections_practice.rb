# your code goes here
require 'byebug'
require 'pry'

def begins_with_r(array)
  array.each do |tools|
    if tools.start_with?("r") == false 
      return false
    end
  end
  true
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.detect do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |i|
    i.class != String
  end
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

def find_cool(array)
cool = []
  array.each do |person|
    person.each do |key, value|
      cool << person if key == :temperature && value == "cool"
    end
  end
  cool
end

def organize_schools(hash)
    schools = {}

  hash.each do |school, location|
    location_key = location[:location]
    if schools.key?(location_key)
      schools[location_key] << school
    else 
      schools[location_key] = []
      schools[location_key] << school
    end
  end
  return schools
end