# https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby

# The goal of this exercise is to convert a string to a new string where each
# character in the new string is '(' if that character appears only once in the
# original string, or ')' if that character appears more than once in the
# original string. Ignore capitalization when determining if a character is a
# duplicate.
#
# Examples:
#
# "din" => "((("
#
# "recede" => "()()()"
#
# "Success" => ")())())"
#
# "(( @" => "))(("

def duplicate_encode(word)
  #your code here
  word = word.downcase
  array = word.split("")
  new_word = ""

  array.each do |letter|
    count = word.count letter
    if count == 1
      new_word += "("
    else
      new_word += ")"
    end
  end

  new_word
end
