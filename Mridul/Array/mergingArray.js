// spread operator(...): copy arry element.


let classroom1= ["luffy", "zoro", "nami", "sanji", "onepiece"];

let classroom2= ["goku", "vegita"];

let classroom3= [...classroom1, ...classroom2, ];  // using spread operator we are copying classroom1 & classroom2 to classroom3

console.log(classroom3);