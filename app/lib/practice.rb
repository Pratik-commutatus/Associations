class Practice
    def self.arr
        array1=[1, 2, 3]
        array2=[8, 1, 3,19]
    #  array1&array2
    # array1+array2
    # array2<<"c"<<array1
    # array1 <=> array2
    # array1==array2                array1.equal?(array2)
    # array2[1..3]
    # array2[0,2]
   
    # array2[0..1]=[6,9]
    # return array2

    # array2[0,3]='A'
    # return array2
    # array1 | array2
    # array1[1]                      array1.at(1)
    # array1.clear
    #array2.collect{|x| x+2}         <use ! for changing in original array>
   
    # array1[2..5]=[nil, nil]
    # array1
    # array1.compact
    # a= %w(hey there stranger)
    # array1.delete_at(2)
    
    # a=[5,6,[4,5,[9,6,7,[2,3]]],[1,2,3],6,9]
    # a.flatten
    # array1.replace([2,4])
    # array1.unshift(9)

    # array2.sort
    # array2.sort{|a,b|b<=>a}                                          ask?
    
    end

    def self.hsh

        a=Hash.new("Error boy")
        a={"name"=> "pratik", "country"=>"uae"}
        # a["name"]="pratikmd"
        # a["name"]
        # a.delete("country")
        # a.clear
        # a["bame"]                   not working

        #  a.default="what ma"    
        # a["lol"]   
        
        # a.delete_if{|k,v| k=="age"}
        # a.merge!("planet"=>"earth")                                **   a2={"why"=>"idk"}.merge(a)         [to merge in beginning]
        # a.each {|key, value| a[key] = value+2}                
        # a.each_key {|key| a[key]=0 }                                         
        # a.empty?
        # a.has_key?("name")
        # a.has_value?(2)

        # a.each{|key, value| 
        #     if value==2 
        #      puts key
        # end}
        
        # a.index(2)                                        shows the first, but what if i want to show all?
        # a.keys
        # a.values

        # a.length
        # a.delete_if{|key,value| value==2}                a.reject{|key,value| value==2}
        # a.delete("name")
        # a.length
       
        # a.sort
        # a.sort_by{|k,v| v}                      #sort desc

        # a.each_value{|v| v.concat("shit")}
        

       

    end
end