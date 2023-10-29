// Print the following pattern:
// 1
// 12
// 123
// 1234
// 12345

let i=1;
let j=1;
let num="";
for(i; i<=5; i++)
{
    for(j; j<=i; j++)
    {
        num+=i;
    }
    console.log(num);
}
