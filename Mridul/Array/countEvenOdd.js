let arr= [1,2,3,4,5,6];

// how many even numbers are there and  how many odd numbers are there.

// you need to use count.

// even: 3 odd: 3

let even=0;
let odd=0;

for(let i=0; i<arr.length; i++){
    if(arr[i]%2==0){
        even++;
    }
    else{
        odd++;
    }
}
console.log("even: ",even,"odd: ",odd);