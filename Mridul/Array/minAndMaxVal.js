let arr= [1,2, -70, 3, -30, 4, 5];

let min = 0;

for(let i=0; i<arr.length; i++){
    if(arr[i]<min){
        min=arr[i];
    }
}

let max=0
for(let i=0; i<arr.length; i++){
    if(arr[i]>max){
        max=arr[i];
    }
}

console.log("Maximum Value:",max ,"\n"+ "Minimum Value:",min);

// ------------------OR----------------

let mini= +Infinity // It will give us the highest value in javascript.

let maxi= -Infinity // it will give us the lowest values in javascript.


for(let i=0; i<arr.length;i++){
  if(arr[i]<mini){
    mini= arr[i];
  }
  if(arr[i]>maxi){
    maxi= arr[i];
  }
}
console.log(mini, maxi);