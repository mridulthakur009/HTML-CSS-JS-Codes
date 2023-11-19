let classroom= ["luffy", "zoro", "nami", "sanji"];

// print in this manner.

//1 luffy
//2 zoro
//3 nami
//4 sanji

//1st Way:

let count=0;
for(let i=0; i<classroom.length; i++){
    count++;
    console.log(count, classroom[i])    
}

//2nd way:
for(let i=0; i<classroom.length;i++){
    console.log(i+1,classroom[i]);
  }
