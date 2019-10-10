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
    num = 0
    if list.length < 3
        return false
    end
    
    list.each do |j|
        index +=1
    end

    while count < list.length
        list_addition = 0
        tester_list = 0
        counter = 0
        list.size.times do |n|
            slice = list[count..(count+2)] # instance aa224
            slice.size.times do |n| #i instead tried to check for three seperate values instead ; I have no clue whether this works
            tester = list[n] % 2  #cause I really need to finish series up - legitimatly 
            tester_list.push(tester)
                if tester_list.length == 3
                    tester_list.size.times do |n|
                    counter += n 
                end 
                if counter == 0 
                    return true
                end 
            end 


            #   if num == 3 #it's never going to reach that condition this rendering it always false
            #     return true
            #   end
        end
        
        
        # if list_addition % 2 == 0  && count < index-2 #I shouldn've done a modulus for there are too many exeptions
        #     return true
        # end
    end

end

p three_even?([5,1,2,2,4,5]) #true
p three_even?([])  #false
p three_even?([2,4,12,5]) #true
p three_even?([2,1,4,6]) #false


# def series_up(list)
#     if n[0] != n[1] # for spots one and bewlow
#         return false
#     end

#     list.size.times do |n|
#       num = n+1
#       list.size.times do |m|
#         slice = list[m+n]
#         print slice 
#       end 
#     end

# end

# print series_up([1,1,1,2,1,2,3])


def series_up(list) # I accidentally did the wrong thing
    sums_list = []
    difference = 0
    list_sum = 0
    first_term = 0
    list_size = 0
    total = 0
    list.each do |f| #this part was a blunder, I should've relized the n term is different from the list size
        list_size += 1
    end

    if list[0]!= list[1] # for spots one and bewlow #switched n to list ; careless mistake
        return false
    end

    list.each do |n|
      list_sum += n
    end
    puts list_sum

    count = 0
    preface_count = 0
    n_count = 0
    while count < list.size #getting the amount of terms there are  
        n_count += 1
        count = 1 + preface_count+count
        preface_count += 1
        difference = list[2]- list[1]
        first_term = list[0]
        first_part = (2.0*first_term)
        second_part_first = (n_count)-1 #I split apart the parts of the equations because there was an error for an incorect placement of parenthesis
        second_part_final = second_part_first*difference
        coefficient = n_count/2.0
        calculated_sum = coefficient*(first_part+second_part_final)
        sums_list.push(calculated_sum)
        #I mistyped the equation, it should be n over two I forgot to find the number of terms in the sequence,
    end
    
    sums_list.each do |g| #adds together the list
     total += g
    end
    #I put the code into a thing so it calculates the total sum for each part of the thing and I pushed it into the list ; since it was only calculating the sum of the actual #'s
    # difference = list[2]- list[1]
    # first_term = list[0]
    # first_part = (2.0*first_term)
    # second_part_first = (n_count)-1 #I split apart the parts of the equations because there was an error for an incorect placement of parenthesis
    # second_part_final = second_part_first*difference
    # coefficient = n_count/2.0
    # calculated_sum = coefficient*(first_part+second_part_final) #I mistyped the equation, it should be n over two I forgot to find the number of terms in the sequence,

    if total == list_sum
        return true
    else
        return false
    end


        
end


# puts series_up([1,1,2,1,2,3])


def series_up_inverse(num)
    final_list = []
    a = 1
    preface_count  = 0 
    count  = 0 
    index = 0
    while index < count 
        
    end

end

puts series_up_inverse(3)