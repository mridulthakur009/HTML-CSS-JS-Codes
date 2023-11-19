arr = [1,2,-3,-5,-1.4,5,-6,-4]

for(let i=0; i<=arr.length; i++){
    if(arr[i]<0){
        arr[i]=0;
    }
}
console.log(arr);