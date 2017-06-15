# https://www.codewars.com/kata/550554fd08b86f84fe000a58
# Given two arrays of strings a1 and a2 return a sorted array r in
# lexicographical order of the strings of a1 which are substrings of strings of a2.
#
# #Example 1: a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# returns ["arp", "live", "strong"]
#
# #Example 2: a1 = ["tarp", "mice", "bull"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# returns []
#
# #Notes: Arrays are written in "general" notation. See "Your Test Cases" for
# examples in your language.
#
# Beware: r must be without duplicates.
def in_array(array1, array2)
  final = []
  array1.each do |word|
    array2.each do |target_word|
      if target_word[word]
        final << word
      end
    end
  end
  final.uniq.sort
end
