// https://www.codewars.com/kata/546f922b54af40e1e90001da

// Welcome. In this kata you are required to, given a string, replace every
// letter with its position in the alphabet. If anything in the text isn't a
// letter, ignore it and don't return it. a being 1, b being 2, etc. As an
// example:
//
// alphabet_position("The sunset sets at twelve o' clock.")
// Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3
// 12 15 3 11" (As a string.)

function alphabetPosition(text) {
  let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  let returnString = ""
  for (var i = 0; i < text.length; i++) {
    let letter = text[i].toLowerCase()
    let number = alphabet.indexOf(letter)
    if (number !== -1) {
      returnString += number + 1 + " "
    }
  }
  return returnString.trim();
}
