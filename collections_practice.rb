# your code goes here
def begins_with_r(array)
    if array.all? {|word| word.start_with?"r"}
        return true
    else
    return false   
    end
end

def contain_a(array)
    array.select {|word| word.include?("a")}
end

def first_wa(array)
    new_array = []
    array.each do |el| 
        if el != el.to_s
            el.to_s
        else
            new_array << el
        end
    end
    new_array.find { |word| word.start_with? ("wa") }
end


def remove_non_strings(array)
    array.select { |el| el == el.to_s}
end


def count_elements(array)
    myresult = []
    array.uniq.map { |el| [ array.count(el), el ] }.each{
        |value| myresult << {:count=>value[0], :name=>value[1][:name]}
    }
    myresult
end

def merge_data(data1, data2)
merged_data = []
    data2.map do |info2|

        info2.each do |person, info|
            data1.map do |info1|
                if person == info1[:first_name]
                    info_person = info.merge(info1)
                    merged_data << Hash[info_person.sort]
                end
            end

        end

    end
    merged_data
end

def find_cool(collection)
    collection.each do |element| 
        if element[:temperature] != "cool" 
            collection.delete(element)
        end
    end 
    
end

def organize_schools(schools)
    
    schools_by_location = {}
    
    schools.each do |school, locationobj|

        if schools_by_location.has_key?(locationobj[:location])
            schools_by_location[locationobj[:location]] << school
        else
            schools_by_location[locationobj[:location]] = [school]
        end
    end
    return schools_by_location
end