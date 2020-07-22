# your code goes here
def begins_with_r(arr)
    arr.each do |el|
return false if el[0]!="r"
    end
    return true
end

def contain_a(arr)
arr.select{|el| el.include?("a")}
end

def first_wa(arr)
    arr.each do |el|
        return el if el[0..1]=="wa"
    end

end

def remove_non_strings(arr)
    arr.select do |el|
        el.to_s== el
    end

end

def count_elements(arr)
 hash=Hash.new(0)
 result=[]
    arr.each {|el| hash[el]+=1}
        hash.each do |k1,v1|  #k1={:name=>"blake"}  v1=2
            k1.each do |k2,v2| #k2=:name  v2=:"blake"
                result<< {:count=>v1, k2=>v2}
            end
        end

    
    result
end

def merge_data(arr1,arr2)
    final_result=[]
    result={}
    arr1.each do |hash1| #{  :first_name => "blake", :motto => "Have a koala-ty day!"},{...}
        hash1.each do |k1,v1| #k1=:firstname v1="blake" 
            arr2.each do |hash2|
                hash2.each do |k2,v2| #k2="blake" v2={:awesomeness=>10,...}
                if v1==k2
                    result[k1]=v1
                    result[:motto]=hash1[:motto]
                    v2.each do |k3,v3|  #:k3=:awesomeness v3=10
                       result[k3]=v3 
                    end
                end
                end
            end
           
        end
        final_result<< result
        result={}
    end
    final_result
end

def find_cool(arr)
    result=[]
    arr.each do |hash|
        if hash[:temperature]=="cool"
            result << hash
        end
    end
result
end

def organize_schools(hash)
    result={"NYC"=>[],"SF"=>[],"Chicago"=>[]}
    hash.each do |k1,v1|  #k1="flatiron school bk", v1=:location => "NYC"
        v1.each do |k2,v2| #k2=:location v2=nyc
            result[v2] << k1
        end
    end
result
end