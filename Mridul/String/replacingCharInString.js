let name = "mridll";

let str=""; // we cant directly replace any character in string, but it can be achieved by storting it to another string. 
for(let i=0; i<name.length; i++){
    if(i==4){
        str += "u"
    }
    else{
        str += name[i];
    }
} 
console.log(str);

let str1= "go%.a$.";

// if you find % ==> h;
// if you find $ ---> n;
// if you find . ---> remove it.
//gohan--> output.

// let str2= "";

// for(let i=0; i<=str.length; i++){
//     if(str1[i]=="%"){
//         str1[i]="h";
//     }
//     if(str1[i]=="$"){
//         str1[i]="n";
//     }
//     if(str1[i]=="."){
//         str1[i].pop;
//     }
// }
// console.log(str1)
