require "pry"

# iterate - first instance where "r" is not first returns false
def begins_with_r(array)
    array.select do |word| 
        return false if word.split('')[0] != "r"  
    end
    true
end

# select
def contain_a(array)
    # make a new array to push the right elements in
    a_words = []
    array.select do |word|
        a_words << word if word.include?("a") 
    end
    a_words
end

# find
def first_wa(array)
    array.find { |word| return word if word.to_s.include?("wa") }
end

# select/reject
def remove_non_strings(array)
    array.reject { |item| item.class != String }
end

# iterate and increment
def count_elements

end

# map/collect
def merge_data

end

# find
def find_cool

end

# sorting
def organize_schools

end