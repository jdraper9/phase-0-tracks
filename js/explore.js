// function reverse 
// 	-accepts string variable (input)
//	-returns string
//		create new variable called str
//		starting with the last letter of input, for each letter in input
//			add letter to str
//	return str

function reverse(input){
	var str = "";
	for (var i = input.length - 1; i >= 0; i --){
		str += input[i];
	}
	return str;
}

var new_string = "Hello!";
if (1 == 1){
	console.log(reverse(new_string))
}
