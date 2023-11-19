let string = "hello how are you? What are you doing";

count = 0;
for(let i=0; i<=string.length; i++){
    if(string[i]==" ")
    count++;
}
console.log("Number of Words: ",count+1); // number of words will be number of space + 1