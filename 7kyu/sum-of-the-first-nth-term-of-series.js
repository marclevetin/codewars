// https://www.codewars.com/kata/555eded1ad94b00403000071/train/javascript
// ###Task:
//
// Your task is to write a function which returns the sum of following series upto nth term(parameter).
//
// Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
// ###Rules:
//
// You need to round the answer upto 2 decimal places and return it as String.
// If the given value is 0 then it should return 0.00
// You will only be given Natural Numbers as arguments.
// ###Examples:
//
// SeriesSum(1) => 1 = "1"
// SeriesSum(2) => 1 + 1/4 = "1.25"
// SeriesSum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"


// notes:
// series denominator increments by 3
// set up variable = 0
// loop through n times, adding 1/n each time.
// round



function SeriesSum(n)
{
  // Happy Coding ^_^
  let sum = 0
  for(i = 0; i < n; i++ ) {
    sum = sum + (1 / (1 + (i*3)))
  }
  return sum.toFixed(2)
}
