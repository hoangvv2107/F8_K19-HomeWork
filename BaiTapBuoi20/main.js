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

// Bai 2
const classA = [15, 2, 8, 10];
const classB = [8, 11, 2, 5, 9];

// Step 1 & 2: [15, 2, 8, 10, 11, 5, 9]
// Step 3: Quick Sort -> [2, 5, 8, 9, 10, 11, 15]

const partition = (arr, low, high) => {
  const pivot = arr[high];
  let i = low - 1;
  for (let j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;
      [arr[i], arr[j]] = [arr[j], arr[i]];
    }
  }
  [arr[i + 1], arr[high]] = [arr[high], arr[i + 1]];
  return i + 1;
};
const quickSort = (arr, low = 0, high = arr.length - 1) => {
  if (low < high) {
    const pi = partition(arr, low, high);

    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
  return arr;
};

const mergedClass = [...classA, ...classB];
const classMap = {};
for (const number of mergedClass) {
  classMap[number] = true;
}

const filteredClass = [];
for (const number in classMap) {
  filteredClass.push(Number(number));
}

const sortedClass = quickSort(filteredClass);
console.log(sortedClass);
