


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

def third_anagram?(str_1, str_2)
    str_1.chars.sort == str_2.chars.sort # O(nlogn)
end

# p third_anagram?("abc", "cba") #true
# p third_anagram?("twooo","words") #false

def fourth_anagram_bonus?(str_1, str_2)
    hash = Hash.new {|h,k| h[k] = [0,0]}
    str_1.each_char {|char| hash[char][0]+=1} #n
    str_2.each_char {|char| hash[char][1]+=1} #n
    hash.each_value.all? {|arr| arr[0]==arr[1]} #n
end #O(n)
# p fourth_anagram_bonus?("abc", "cba") #true
# p fourth_anagram_bonus?("twooo","words") #false





