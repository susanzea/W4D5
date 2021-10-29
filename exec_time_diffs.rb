

def my_min(list)
    min = list.first

    list.each do |i|
        list.each do |j|
            if i < j && i < min
                min = i
            end
        end
    end

    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

def my_min_fast(list)
    min = list.first

    list.each do |num|
        min = num if num < min 
    end

    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_fast(list)  # =>  -5


def largest_contiguous_subsum(list)
    sub_arrs = []

    (0...list.length).each do |i|       #nested loop is n^2
        (i...list.length).each do |j|
            sub_arrs << list[i..j]
        end
    end

    sum_arr = sub_arrs.map { |sub| sub.sum }    #these two lines are 2n
    sum_arr.max
end                                        #//final complexity is O(n^2)

list = [5, 3, -7]
list2 =[-5,-3,-8,-2]
list3 =[2,-1,-1,4,-2]
# p largest_contiguous_subsum(list) # => 8

def largest_contiguous_subsum_fast(list)
    largest_sum = 0
    curr_sum = 0
    return list.max if list.all? {|num| num < 0}            #O(n)
    list.each do |num|                                      #O(n)
        if num + curr_sum <= 0
            curr_sum = 0
            next
        end
        curr_sum += num
        largest_sum = curr_sum if curr_sum > largest_sum
    end
    largest_sum
end                                                        #O(2n) => O(n)

p largest_contiguous_subsum_fast(list)
p largest_contiguous_subsum_fast(list2)
p largest_contiguous_subsum_fast(list3)

