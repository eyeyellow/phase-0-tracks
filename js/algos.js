// Function for returning longest string from array:
// Function takes an array, and returns longest string
// Set initial "longest" value as first string in the array
// go through each item in an array and check to see if it's value is longer
// if it is, then set it as the new value of "longest"
// if not, then do nothing

function findMax(array) {
  var longest = array[0]
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest.length) {
      longest = array[i];
    }
  }
  return longest;
};


// Finding key-value match
// Take in two objects as arguments
// Loop through to see if each key in one matches any key in other
//  -if not, then return false
//  -if key does match, then check to see if values match
//    -If not, then return false
//    -If one match, then return true

function keyVal(obj1, obj2) {
  var booleanArray = [];
  for (var prop1 in obj1) {
    for (var prop2 in obj2) {
      booleanArray.push(obj1[prop1] == obj2[prop2]);
    }
  }
  var flag = false;
  for (var i = 0; i < booleanArray.length; i++) {
    if (booleanArray[i])
      flag = true;
  }
  return flag;
}


// Function for generating random strings:
// takes 1 argument specifying numbers of cstrings
//  -have local variable that has string of alphabet
//  -generate random number (also assigned to local variable)
//   -multiply by 26(?) to get it to be an integer (also, .floor?)
// pick that letter of the alphabet_string(index)
// loop through it over and over until it satisfies number of chars

function randString(num) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var stringArray = [];
  for (var j = 0; j < num; j++) {
    var string = "";
    var numChars = Math.floor(Math.random() * 10 + 1);
    for (var i = 0; i < numChars; i++) {
      string += alphabet[Math.floor(Math.random() * 26)];
    }
    stringArray.push(string);
  }
  return stringArray;
}


// Test for finding Max string length:
// var testArray = ["123456", "1", "12345", "123", "1234", "1234567", "12"];
// console.log(findMax(testArray));

// Tests for finding key-value matches:
// var keyValueTest1 = {name: "Tamir", age: 54};
// var keyValueTest2 = {name: "Steven", age: 54};
// var valueFalseTest = {name: "Jimmy", age: 13};
// var keyFalseTest = {height: 6, address: "20 Quartz Way"}
// console.log(keyVal(keyValueTest1, keyValueTest2));
// console.log(keyVal(keyValueTest1, valueFalseTest));
// console.log(keyVal(keyValueTest1, keyFalseTest));

// Tests for generating random strings:
// console.log(randString(3));
// console.log(randString(9));

// Driver code for Release 2.2:
for (i = 0; i < 10; i++) {
  var randArray = randString(6);
  console.log("Array #" + (i + 1) + " " + randArray);
  console.log("The longest word is: " + findMax(randArray));
}