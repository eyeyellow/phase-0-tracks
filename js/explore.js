//Comments:
//In a loop, go through each letter of a string
//and put the letters in a new (empty) variable
//that assigns the indexes of the string
//in reverse order by counting backwards
function reverseWords(string) {
  var revString = "";
  for (var i = string.length - 1; i >= 0; i--) {
    revString += string[i];
  }
  return revString;
}

// reverseWords("hello");

var test = reverseWords("This is a test string.");
if (1 == 1) {
  console.log(test);
}
else {
  console.log(false);
}
