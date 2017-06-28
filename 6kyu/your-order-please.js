// https://www.codewars.com/kata/your-order-please/train/javascript
//
// Your task is to sort a given string. Each word in the String will contain a
// single number. This number is the position the word should have in the result.
//
// Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
//
// If the input String is empty, return an empty String. The words in the input
// String will only contain valid consecutive numbers.
//
// For an input: "is2 Thi1s T4est 3a" the function should return "Thi1s is2 3a
// T4est"

function order(words){
  if (words == false) {
    return ""
  } else {
    array = words.split(" ")
    sortedArray = []
    for (var i = 0; i < array.length; i++) {
      let word = array[i]
      let sortedWord = word.split("").sort()
      let sortOrder = sortedWord[0]
      word = sortOrder + word
      sortedArray.splice(sortOrder,0,word)
    }

    sortedArray = sortedArray.sort()
    finalArray = []
    for (var i = 0; i < sortedArray.length; i++) {
      let word = sortedArray[i].split("")
      word.splice(0,1)
      word = word.join("")
      finalArray.push(word)
    }
  }

  return finalArray.join(" ")
}
