# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1

# Count the number of Duplicates
#
# Write a function that will return the count of distinct case-insensitive
# alphabetic characters and numeric digits that occur more than once in the
# input string. The input string can be assumed to contain only alphanumeric
# characters, including digits, uppercase and lowercase alphabets.
#
# Example
#
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabbcdeB" -> 2 # 'a' and 'b'
# "indivisibility" -> 1 # 'i'
# "Indivisibilities" -> 2 # 'i' and 's'
# "aa11" -> 2 # 'a' and '1'

# Sample tests
# Test.assert_equals(duplicate_count(""), 0)
# Test.assert_equals(duplicate_count("abcde"), 0)
# Test.assert_equals(duplicate_count("abcdeaa"), 1)
# Test.assert_equals(duplicate_count("abcdeaB"), 2)
# Test.assert_equals(duplicate_count("Indivisibilities"), 2)

require 'pry'

def duplicate_count(text)
    #your code here
    text = text.downcase
    array = text.split("")
    duplicates = []

    array.each do |letter|
      count = text.count letter
      if count > 1 && !duplicates.include?(letter)
        duplicates << letter
      end
    end

    duplicates.size
end

duplicate_count("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
