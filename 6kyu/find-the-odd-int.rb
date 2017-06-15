# https://www.codewars.com/kata/54da5a58ea159efa38000836
# Given an array, find the int that appears an odd number of times.
#
# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  #your code here
  unique_number = ""

  seq.each do |number|
    if seq.count(number).odd?
      unique_number = number
      break
    end
  end

  unique_number
end
