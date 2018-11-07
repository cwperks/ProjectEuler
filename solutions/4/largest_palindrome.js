let n = 3; // Number of digits in each multiple

let left = Math.pow(10, n) - 1;
let right = Math.pow(10, n) - 1;

let isPalindrome = function(n) {
	let numStr = String(n);
	let firstIndex = 0;
	let lastIndex = numStr.length - 1;
	while (firstIndex < lastIndex) {
		if (numStr[firstIndex] != numStr[lastIndex]) {
			return false;
		}
		firstIndex += 1
		lastIndex -= 1
	}
	return true;
} 

// Brute force solution, can be optimized with math
let largestPalindrome = 1;
let found = false;
let leftMultiple, rightMultiple;
while (left >= Math.pow(10, n) / 2) {
	while (right >= Math.pow(10, n - 1)) {
		let contender = left * right;
		if (isPalindrome(contender)) {
			if (contender > largestPalindrome) {
				leftMultiple = left;
				rightMultiple = right;
				largestPalindrome = contender;
				break;
			}
		}
		right--;
	}
	left--;
	right = Math.pow(10, n) - 1;
}

console.log("left: " + leftMultiple);
console.log("right: " + rightMultiple);
console.log(largestPalindrome);
