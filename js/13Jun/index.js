let fifteen = Promise.resolve(15);

console.log(fifteen)
fifteen.then(value => console.log(value))


// function storage(nest, name) {
//     return new Promise(resolve => {
//         nest.readStorage(name, result => resolve(result))
//     })
// }

// storage(bigOak, "enemies")
// //     .then(value => console.log("Got", value))

// new Promise((_, reject) => reject(new Error("Fail")))
//     .then(value => console.log("Handler 1"))
//     .catch(reason => {
//         console.log("Caught failure " + reason)
//     })
//     .then(value => console.log("Handler 2", value))



new Promise(() => setTimeout(console.log, 0, 'executor'));
setTimeout(console.log, 0, 'promise initialized');

// executor
// promise initialized



// let p = new Promise((resolve, reject) => setTimeout(resolve, 1000));

// // When this console.log executes, the timeout callback has not yet executed:
// setTimeout(console.log, 0, p); // Promise <pending>



// let p1 = new Promise((resolve, reject) => {
//     setTimeout(reject, 10000); // After 10 seconds, invoke reject()
   
//     // Do executor things
//    });
   
//    setTimeout(console.log, 0, p1);   // Promise <pending>
//    setTimeout(console.log, 11000, p1); // Check state after 11 seconds
   
   // (After 10 seconds) Uncaught error
   // (After 11 seconds) Promise <rejected>



let p1 = new Promise((resolve, reject) => resolve());
let p2 = Promise.resolve();



setTimeout(console.log, 0, Promise.resolve());
// Promise <resolved>: undefined

setTimeout(console.log, 0, Promise.resolve(3));
// Promise <resolved>: 3

// Additional arguments are ignored
setTimeout(console.log, 0, Promise.resolve(4, 5, 6));
// Promise <resolved>: 4


   
async function foo() {}

let bar = async function() {};

let baz = async () => {};

class Qux {
 async qux() {}
}



