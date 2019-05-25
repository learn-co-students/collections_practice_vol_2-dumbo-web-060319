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

# iterate and increment use map and select each name
def count_elements(array)
    # new hash to store the count
    hash_arr = []
    
    # push first instance of names into names array
    names = []
    # hold count for each name in array - 
    name_count_arr = []
    # increment every time you see the name. If you don't see the name, push the current count into array, then reset to one
    current_name_count = 0

    array.map do |name_hash|
        
        name_hash.select do |title, name| # title = :name, name = "blake" || "ashley"
            # No names in our array?
            if names.length == 0
                # push the name into the array
                names << name
                # add one to the count
                current_name_count += 1

            elsif names.include?(name) # Is this name in our array already?
                current_name_count += 1 # Just increment it's count
            elsif !names.include?(name) # New name?
                name_count_arr << current_name_count # Push our current count into the array
                names << name # Push our new name into names array
                current_name_count = 1 # Set current count to 1
            end

            # if this is the last iteration
            if array[-1][:name] == name
                name_count_arr << current_name_count # Push our count into the array
            end

        end

    end

    # for each name
    i = 0
    while i < names.length
        new_hash = {}
        new_hash[:count] = name_count_arr[i]
        new_hash[:name] = names[i]
        hash_arr << new_hash

        i += 1
    end

    hash_arr
end

# map/collect - datasets look like:
# 1 => [{:first_name=>"blake", :motto=>"Have a koala-ty day!"}, 
# {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
# 2 => [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
#  "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
# merge order: awesomeness, first_name, height, last_name, motto
def merge_data(d1, d2)
    merged = []

    d2.map do |set2|

        set2.map do |name, stats|
            d1.map do |set1|
                # binding.pry
                if name == set1[:first_name]
                    group = stats.merge(set1)
                    merged << Hash[group.sort]
                end

            end

        end

    end
    merged
end

# find
def find_cool(cooliest)

end

# sorting
def organize_schools(schools)

end