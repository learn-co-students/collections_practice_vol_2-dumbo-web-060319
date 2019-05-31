def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  a_words = []
  array.each do |element|
    if element.include?("a")
      a_words << element
    end
  end
  a_words
end

def first_wa(array)
  array.each do |element|
    if element.to_s.include?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  strings = []
  array.each do |element|
    if element.class == String
      strings << element
    end
  end
  strings
end


def count_elements(array)
  array.each do |element|
    element[:count] = 0
    name = element[:name]
    array.each do |info|
      if info[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  data[0].collect do |name, hash|
    new_hash = {}
    keys.each do |element|
      if element[:first_name] == name
        new_hash = hash.merge(element)
      end
    end
    new_hash
  end
end

def find_cool(cool)
  array = []
  cool.each do |key|
    key.each do |info, data|
      if data == "cool"
        array << key
      end
    end
  end
  array
end

def organize_schools(schools)
  hash = {}
  schools.each do |school, location|
    city = location[:location]
    if hash.include?(city)
      hash[city] << school
    else
      hash[city] = []
      hash[city] << school
    end
  end
  hash
end


