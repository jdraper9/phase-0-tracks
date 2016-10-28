// function longestPhrase
//	-accepts array of strings
//  -returns string
//		* define integer variable longest_length, set to 0
//		* define empty string variable longest_phrase
//		* for each string in array
//			* if length of string is greater than longest_length
//				* set longest_length to value of string's length
//				* set longest_phrase to equal that string
//		* return longest_phrase

function longestPhrase(array){
	var longest_length = 0;
	var longest_phrase = "";
	for (var i = 0; i < array.length; i ++){
		if(array[i].length > longest_length){
			longest_length = array[i].length;
			longest_phrase = array[i];
		}
	}
	return longest_phrase;
}

// function share
//	- accepts two objects, obj1 and obj2
//	- returns boolean
//		* define boolean share, set to false
//		* define array obj1_keys, containing keys of obj1
//		* define array obj2_keys, containing keys of obj2
//		* for each key of obj1
//			* for each key of obj2
//				* if key of obj1 is equal to key of obj2
//					* if value of keys are equivalent
//						* set share to true
//		* return share

function share(obj1, obj2){
	var share = false;
	var obj1_keys = Object.keys(obj1);
	var obj2_keys = Object.keys(obj2);
	for (var i = 0; i < obj1_keys.length; i++){
		for (var j = 0; j < obj2_keys.length; j ++){
			if (obj1[obj1_keys[i]] == obj2[obj2_keys[j]]){
				share = true;
			}
		}
	}
	return share;
}


// function tester
// 	- accepts integer called num
//	- returns array of strings
//		* define empty array str_array
//		* define string with all letters in alphabet
//		* for as many times as integer num
//			* define string variable new_word
//			* for a random number between 1 and 10
//				* add a random letter from alphabet to new_word
//			* add new_word to str_array
//		* return str_array

function test(num){
	const alphabet = "abcdefghijklmnopqrstuvwxyz";
	var str_array = [];
	for (i = 0; i < num; i++){
		var new_word = "";
		for (j = 0; j < Math.floor((Math.random() * 10) + 1); j ++){
			new_word += alphabet[Math.floor((Math.random() * 26))];
		}
		str_array[i] = new_word;
	}
	return str_array;
}






// --- longestPhrase driver code ---

// test_array = ["tree", "car", "elephant", "cat"];
// console.log(longestPhrase(test_array));

// --- share driver code ---

// object_1 = {name: "Steven", age: 54};
// object_2 = {name: "Tamir", age: 54};
// console.log(share(object_1, object_2));
// object_2 = {name: "Tamir", age: 30};
// console.log(share(object_1, object_2));

// --- test driver code ---

//console.log(test(3));

// --- test / longestPhrase driver code ---

for (k = 0; k < 10; k ++){
	console.log("Test #" + (k + 1));
	test_array = test(Math.floor((Math.random() * 10) + 1)); // create array of random length between 1 and 10
	console.log("Array:");
	console.log(test_array);
	console.log("Longest word: " + longestPhrase(test_array));
	console.log("");
}





