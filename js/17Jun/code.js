// setTimeout(() => {
//     console.log("done")
// }, 2000)

let a= 1
let b= 2
console.log(a+b)
const helpers = require("./helper")
console.log(helpers)
helpers.sayHi("Mike")

// const fs = require("fs")
// fs.appendFile("./node.text", "Hello World", () => {
//     console.log("saved")
// })
// console.log("After append file")

const myLodash = require("./lodash");

console.log(myLodash.random());

myLodash.times(2, i => {
  console.log(i);
});