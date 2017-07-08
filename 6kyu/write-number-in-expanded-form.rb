# https://www.codewars.com/kata/5842df8ccbd22792a4000245/train/ruby
# Write Number in Expanded Form
#
# You will be given a number and you will need to return it as a string in Expanded Form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
# NOTE: All numbers will be whole numbers greater than 0.
#
# If you liked this kata, check out part 2!!

def expanded_form(num)
  array = num.to_s.split("")
  length = num.to_s.size - 1
  numbers_array = []

  array.each do |number|
    numbers_array << number.to_i * 10**(length)
    length -= 1
  end

  numbers_array.delete_if {|i| i == 0} # cleans up 0s from array.  For example: expanded_form(70304)
  numbers_array.join(" + ")

end
