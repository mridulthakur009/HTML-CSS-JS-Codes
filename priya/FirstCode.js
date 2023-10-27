//print 
*****
**** 
***
**
*
// for (let i=5; i>=1; i--){
//   let k ="";
//   for ( let j=1; j<=i; j++){
//     k += "*";
//   }
//   console.log(k)
// }


// //print 01010 0101 010 01 0
// for (let i=5; i>=1; i--){
//   let k ="";
//   for ( let j=1; j<=i; j++){

//     if (j%2!=0){
//       k += "0";
//     }
//     else{
//       k += "1";
//     }
//   }
//   console.log(k);
// }







// print * ** *** **** *****
for (let i=1; i<=5; i++){
    let k ="";
    for ( let j=1; j<=i; j++){
      k += "*";
    }
    console.log(k)
  }
  
  //print 1 22 333 4444 55555
  for (let i=1; i<=5; i++){
    let k ="";
    for ( let j=1; j<=i; j++){
      k += i;
    }
    console.log(k)
  }
  
  //print 1 12 123 1234 12345
  for (let i=1; i<=5; i++){
    let k ="";
    for ( let j=1; j<=i; j++){
      
      k += j;
    }
    console.log(k)
  }
  
  //print 0 01 010 0101 01010
  for (let i=1; i<=5; i++){
    let k ="";
    for ( let j=1; j<=i; j++){
  
      if (j%2==0){
        k += "1";
      }
      else{
        k += "0";
      }
    }
    console.log(k);
  }
  
  
  //find count
  let arr=["1","2","2","3","4","7","8","6","5","7","8"];
  
  for(let i=0; i<arr.length; i++){
    console.log(arr[i]);
    
  }
  
  
  let a= "ABCD";
  let r= "";
  for (let i=0; i<a.length; i++){
    r= a[i]+ r;
  }
    console.log(r);
