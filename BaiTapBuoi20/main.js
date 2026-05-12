// Bai 1
const numbers = [9, 8, 3, 5, 6, 2, 7, 9];
// Expected result: 8

const getSecondLargestValue = (arr) => {
  let maxValue = -Infinity;
  let secondLargestValue = -Infinity;
  for (const number of arr) {
    if (maxValue < number) {
      secondLargestValue = maxValue;
      maxValue = number;
    } else if (secondLargestValue < number && number !== maxValue) {
      secondLargestValue = number;
    }
  }
  return secondLargestValue;
};

console.log(getSecondLargestValue(numbers));
