


def first_anagram?(str_1, str_2)
    anagrams = str_1.split("").permutation.to_a
    anagrams.each do |str|
        return true if str.join("") == str_2
    end

    false                                           #O(n!)
end

# p first_anagram?("abc", "cba") #true
# p first_anagram?("two","words") #false


def second_anagram?(str_1, str_2)
    return false if str_1.length != str_2.length

    str_1.each_char do |char|
        idx = str_2.index(char)
        next if idx == nil
        str_2 = str_2[0...idx] + str_2[idx+1..-1]
    end

    return str_2.empty?                 #// O(n^2)
end

# p second_anagram?("abc", "cba") #true
# p second_anagram?("twooo","words") #false






