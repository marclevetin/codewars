# # https://www.codewars.com/kata/thue-morse-sequence/train/javascript
#
# Given a positive integer n, return first n dgits of Thue-Morse sequence, as a
# string (see examples).
#
# Thue-Morse sequence is a binary sequence with 0 as the first element. The rest
# of the sequece is obtained by adding the Boolean (binary) complement of a
# group obtained so far.
#
# For example:
#
# 0
# 01
# 0110
# 01101001
# and so on...
# alt
#
# Ex.:
#
# thueMorse(1); //'0'
# thueMorse(2); //'01'
# thueMorse(5); //'01101'
# thueMorse(10): //'0110100110'
# You don't need to test if n is valid - it will always be a positive integer.
# n will be between 1 and 10000
# Thue-Morse on Wikipedia
#
require 'pry'
def thue_morse(n)
  #your code here

  first = "0"

  n.times do
    if n == 1
      first = "0"
    else
      binding.pry
      second = first.tr("01","10")
      first = first + second
    end
  end

  first
end

thue_morse(2)
