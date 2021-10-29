

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

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

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

    sub_arrs.map! { |sub| sub.sum }    #these two lines are 2n
    sub_arrs.max
end                                        #//final complexity is O(n^2)

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8


