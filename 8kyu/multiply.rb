# https://www.codewars.com/kata/50654ddff44f800200000004/train/ruby

# The code does not execute properly. Try to figure out why.

# Original:
def multiply(a b)
  a * b
end

# And the tests:
# TODO: Replace examples and use TDD development by writing your own tests
# These are some of the methods available:
#   Test.expect(boolean, [optional] message)
#   Test.assert_equals(actual, expected, [optional] message)
#   Test.assert_not_equals(actual, expected, [optional] message)

describe "Solution" do
  it "should test for something" do
    Test.assert_equals("actual", "expected", "This is just an example of how you can write your own TDD tests")
  end
end

# Fixed the bug
def multiply(a, b)
  a * b
end

# And wrote a couple tests
describe "correct math" do
  it "should return 0 if b is 0" do
    Test.assert_equals(multiply(1,0), 0, "a is 0")
  end

  it "should return 0 if a is 0" do
    Test.assert_equals(multiply(0,1), 0, "b is 0")
  end

  it "should return 4 if a and b are both 2" do
    Test.assert_equals(multiply(2,2), 4, "hooray for good math!")
  end

  it "should return a float if a or b are have a decimal" do
    Test.assert_equals(multiply(0.5,5), 2.5, "answer should be 2.5")
  end
end
