var isOdd = (arr, value) => arr.filter(item => item === value).length < 2;
var createPair = (arr, value) => isOdd(arr, value) && arr.concat([value]);
var arrNumbers = [0,1,2,3,4];

arrNumbers.reduce((prev, curr, idx, arr) => createPair(prev,curr), arrNumbers).sort()