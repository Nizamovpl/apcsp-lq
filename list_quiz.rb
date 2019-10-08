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

# print bigger_two([1,2], [3,4])
# print bigger_two([1,7],[4,4])


def three_even?(list)
    count = 0
    index = 0 
    if list.length < 3
        return false
    end
    list.each do |j|
        index +=1
    end

    while count < list.length
        slice = list[count..(count+2)] # instance aa224
        print slice
        count +=1
        list_addition = 0
        slice.size.times do |n|
          list_addition += n
        end

        if list_addition % 2 == 0  && count < index-2
            return true
        end
    end

end

p three_even?([5,1,2,2,4,5]) #true
p three_even?([])  #false
p three_even?([2,4,12,5]) #true
p three_even?([2,1,4,6]) #false