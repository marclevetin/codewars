// https://www.codewars.com/kata/555615a77ebc7c2c8a0000b8
//
// The new "Avengers" movie has just been released! There are a lot of people at
// the cinema box office standing in a huge line. Each of them has a single 100,
// 50 or 25 dollars bill. A "Avengers" ticket costs 25 dollars.
//
// Vasya is currently working as a clerk. He wants to sell a ticket to every
// single person in this line.
//
// Can Vasya sell a ticket to each person and give the change if he initially
// has no money and sells the tickets strictly in the order people follow in the
// line?
//
// Return YES, if Vasya can sell a ticket to each person and give the change.
// Otherwise return NO.
//
// ###Examples:
//
// // === JavaScript ==
//
// tickets([25, 25, 50]) // => YES
// tickets([25, 100])
//         // => NO. Vasya will not have enough money to give change to 100 dollars

ffunction tickets(peopleInLine){
  let countOf25s = 0
  let countOf50s = 0

  for(i=0; i < peopleInLine.length ; i++) {
    person = peopleInLine[i]
    if (person === 25) {
      countOf25s++
    } else if (person === 50) {
      countOf50s += 1
      countOf25s -= 1
    } else if (person === 100) {
      if (countOf50s > 0) {
        countOf50s -= 1
        countOf25s -=1
      } else {
        countOf25s -= 3
      }
    }

    if (countOf25s < 0 || countOf50s <0 ) {
      return "NO"
    }
  }

  return "YES"

}
// Original pseudocode:
//   if number is 25, then both increment up 1
//   if number is 50, then count decrements 1, amount increments by 25
//   if number is 100, then count decrements 3, amount increases by 25
//      watch out for 50s.  They count as two 25s.

//   after each number, if either count or amount is negative, return NO

//   else return yes

// As it turns out, I didn't need to track the amount collected.
