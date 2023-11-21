let names = "mridul thakur"

let str = "";

for(let i = names.length-1; i>=0; i--){
    str+=names[i];
}
console.log(str);

// There is a string and the length of the string is even, split it from half then reverse then concate it

// let str= "school";
// Output: hcsloo

let str1= "school";

let str2="";
let str3="";

for(let i=str1.length-1; i>=str1.length/2; i--){
    str2 += str1[i];
}
for(let i=str1.length/2-1; i>=0; i--){
    str3 +=str1[i];
}

console.log(str3+str2)

