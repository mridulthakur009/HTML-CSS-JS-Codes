let classroom1= ["luffy", "zoro", "nami", "sanji", "onepiece"];

let arr=[];
for(let i=0; i<classroom1.length; i++){
   arr.push(classroom1[i].length);
}
console.log(arr);

let classroom2= ["luffy", "zoro", "nami", "sanji", "onepiece"]; // count no. of individual strings of an array.


//Total number of elements in an array

let sum=0;

for(let j=0; j<classroom2.length; j++){
   sum +=classroom2[j].length
}
console.log(sum);
