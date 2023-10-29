// Print the following pattern:

// 1
// 22
// 333
// 4444
// 55555

for(let i=1; i<=5; i++)
{   
    let num="";
    for(let j=1; j<=i; j++)
    {
        num+=i;
    }
    console.log(num);
}
