// Print the following pattern:

// *
// **
// ***
// ****
// *****

let i=0;
let j=0;
let str="";
for(i; i<5; i++)
{
    for(j; j<=i; j++)
    {
        str+="*"           
    }
    console.log(str);
}
