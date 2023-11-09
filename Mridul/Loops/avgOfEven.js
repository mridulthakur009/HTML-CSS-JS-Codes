//Print the average of even number upto 100

let average=0;
count=0;

for(let i=0; i<=100; i=i+2){
    average += i;
    count++;
}

console.log("The average is",average/count);