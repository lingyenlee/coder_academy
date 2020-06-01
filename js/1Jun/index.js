//callback
// function adder(num1, num2, onComplete) {
//     const answer = num1 + num2

//     onComplete(answer)

//     // return answer

// }

// function callOnAdderComplete(answer) {
//     console.log("Done with adder", answer)
// }

// const result = adder(2, 5, callOnAdderComplete)
//console.log(result)

//async


// function wait(milliseconds) {
//     let start = Date.now()
//     let now = start

//     while (now - start < milliseconds) {
//         now = Date.now()
//     }
//     console.log("finished wait")
// }

console.log(1)
setTimeout(() => console.log("done aysn"), 1000)
console.log(2)