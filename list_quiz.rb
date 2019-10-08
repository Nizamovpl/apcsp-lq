def bigger_two(list1, list2)
    value1 = 0
    value2 = 0
    list1.each do |n|
      value1 += n
    end

    list2.each do |o|
        value2 += o
    end
   
    if value1 >= value2
        return list1
    end

    if value1 < value2
        return list2
    end
        
end

print bigger_two([1,2], [3,4])
print bigger_two([1,7],[4,4])