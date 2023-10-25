let arr=[1,2,3,4,5,6,1,5,2,5,3,2,1]
let obj = {};

for(let i = 0; i<arr.length; i++){
    if(arr[i]!==Object.keys(obj))
    {
        obj[arr[i]] = arr[i];
    }
}
console.log(obj);