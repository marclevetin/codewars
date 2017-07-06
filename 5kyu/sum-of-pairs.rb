# https://www.codewars.com/kata/54d81488b981293527000c8f/train/rubySum of Pairs
#
# Given a list of integers and a single sum value, return the first two values
# (parse from the left please) in order of appearance that add up to form the
# sum.
#
# sum_pairs([11, 3, 7, 5],         10)
# #              ^--^      3 + 7 = 10
# == [3, 7]
#
# sum_pairs([4, 3, 2, 3, 4],         6)
# #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# #             ^-----^      3 + 3 = 6, indices: 1, 3
# #                ^-----^   2 + 4 = 6, indices: 2, 4
# #  * entire pair is earlier, and therefore is the correct answer
# == [4, 2]
#
# sum_pairs([0, 0, -2, 3], 2)
# #  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)
#
# sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
# == [3, 7]
# Negative numbers and duplicate numbers can and will appear.
#
# NOTE: There will also be lists tested of lengths upwards of 10,000,000
# elements. Be sure your code doesn't time out.

# pseudocode
# loop through numbers.
# For each number, see if the second number exists
# log both indices
#
# exit loop after index is greater than second index of the first pair
#
# compare collections of numbers
# return pair with the lower indices wins

require 'pry'
def sum_pairs(ints, s)
  pairs = []
  # determine possible pairs
  ints.each_with_index do |first_number, index|
    second_number = s - first_number
    second_number_index = ints.index {|i| i == second_number && i > second_number_index}
    if second_number_index && index < second_number_index
      first_number_index = index
      numbers_and_indicies = {first_number => first_number_index, second_number => second_number_index}
      pairs << numbers_and_indicies
    end
    binding.pry
  end

  # determine earliest pair
  if pairs.empty?
    return nil
  elsif pairs.size == 1
    binding.pry
    return pairs[0].keys
  else
    pairs.each_with_index do |pair, index|
      binding.pry
      if pair.key < pairs[index + 1].key
      end
    end
  end
end

# sum_pairs([1, 4, 8, 7, 3, 15], 8)
sum_pairs([4, 3, 2, 3, 4], 6)
