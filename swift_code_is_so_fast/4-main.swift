/*
	Function returns the largest integer from a given array.
	Best to use ! after checking if integer exists.
	! removes "Optional".
*/
var numbers = [4, 7, 1, 9, 6, 5, 6, 9]

let max = numbers.sort().last!

print(max)
