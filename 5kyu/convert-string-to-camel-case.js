// http://www.codewars.com/kata/convert-string-to-camel-case/train/javascript

// Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized.
//
// Examples:
//
// // returns "theStealthWarrior"
// toCamelCase("the-stealth-warrior")
//
// // returns "TheStealthWarrior"
// toCamelCase("The_Stealth_Warrior")

function toCamelCase(str){
  splitString = str.toLowerCase().split("") // the LowerCase function to correct for use cases where the first word is capitalized
  spacer = splitString.sort()[0]
  stringArray = str.split(spacer)

  finalArray = []

  if (str != "") {
    for(i=0; i < stringArray.length; i++) {
      if (i > 0) {
        finalArray.push(capitalizeWord(stringArray[i]))
      } else {
        finalArray.push(stringArray[i])
      }
    }
  }

  return finalArray.join("")
}

function capitalizeWord(word){
  firstLetter = word[0]
  firstLetterCapitalized = firstLetter.toUpperCase()
  titleCaseWord = word.replace(firstLetter, firstLetterCapitalized)

  return titleCaseWord
}
