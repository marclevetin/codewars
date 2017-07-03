// // http://www.codewars.com/kata/576757b1df89ecf5bd00073b/train/javascript
// Build Tower
//
// Build Tower by the following given argument:
// number of floors (integer and always greater than 0).
//
// Tower block is represented as *
//
// Python: return a list;
// JavaScript: returns an Array;
// C#: returns a string[];
// PHP: returns an array;
// C++: returns a vector<string>;
// Haskell: returns a [String];
// Have fun!
//
// for example, a tower of 3 floors looks like below
//
// [
//   '  *  ',
//   ' *** ',
//   '*****'
// ]
// and a tower of 6 floors looks like below
//
// [
//   '     *     ',
//   '    ***    ',
//   '   *****   ',
//   '  *******  ',
//   ' ********* ',
//   '***********'
// ]
// Go challenge Build Tower Advanced once you have finished this :)

function towerBuilder(nFloors) {
  let tower = []
  let splat = "*"
  let space = " "

  let spaceCounter = nFloors

  for (i = 0; i < nFloors; i++) {
    spaceCounter--
    let row = space.repeat(spaceCounter) + splat.repeat(1 + i*2) + space.repeat(spaceCounter)
    tower.push(row)
  }
  return tower
}
