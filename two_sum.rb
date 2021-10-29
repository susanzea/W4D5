require "byebug"


def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |num_1, i_1|
        arr.each_with_index do |num_2, i_2|
            return true if i_2 > i_1 && num_1 + num_2 == target_sum
        end
    end

    false       
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target_sum)
    sorted_arr = arr.sort
    (0...sorted_arr.length).each do |i|
        next if i+1 == sorted_arr.length
        return true if sorted_arr[i] + sorted_arr[i+1] == target_sum
    end

    return false
end

# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


arr = [0, 1, 5, 7]
arr2 = [5,5,5,5,5,5]
arr3 = [5, 0, 1, 7]
def two_sum?(arr, target_sum)
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1 }
    arr.each do |ele| #5
        # debugger
        if hash[target_sum - ele] != 0 #hash[10 - 1] == hash[9] => nil
            if (target_sum - ele) == ele #(5) == 5
                # debugger
                next if hash[ele] < 2  
            end
            return true
        end
    end
    # debugger
    false
end                                         #O(n)

p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
p two_sum?(arr2, 10) # => should be true
p two_sum?(arr3, 6) # => should be true

