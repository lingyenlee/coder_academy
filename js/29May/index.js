//handle custom exception

// throw "my custom error"
//throw "you did something wrong"
//throw 42
//throw ["one", 1, 2]
// throw {
//     message: "error",
//     status: 501
// }

// function CustomError(message) {
//     this.message = message
//     this.code = "my-custom-error"
// }

//use class to customise error
// class CustomError {
//     constructor(message) {
//         this.message = message
//         this.code = "my-custom-error"
//     }
// }


//throw new CustomError("something went wrong")


// class MovieRatingError {
//     constructor(message) {
//         this.message = message
//         this.code = "movie-rating-error"
//     }

// }

// throw new MovieRatingError("The movie can't have a rating")


//handle error
// no breaking code in try block
// error in try block gets store in the error in the catch block

// try {
//     console.log("Before error")
//     throw new MovieRatingError("The movie can't have a rating")
//     console.log("After error")
//     // throw "simple error"
// } catch (error) {
//     //console.log("Hey we in the catch")
//    // alert(error.message)
//     console.log(error.message)

// }

// function riskyFunction() {
//      throw new MovieRatingError("The movie can't have a rating of rating")
// }

// try {
//     console.log("Before error")
//     riskyFunction()
//     console.log("After error")
//     // throw "simple error"
// } catch (error) {
//     //console.log("Hey we in the catch")
//    // alert(error.message)
//     console.log(error.message)

// } finally {
//     //always get executed
//    // console.log("Always executed")
// }

//console.log("Always executed")

// class SubtractionError {
//     constructor(message) {
//         this.message = message
//         this.code = "subtraction-invalid-input"
//     }
// }
// //without try/catch
// function subtractTwoThings(num1, num2) {
//     let answer;
//     answer = num1 - num2
//     if (isNaN(answer)) {
//         throw new SubtractionError(`You can't substract ${num1} and ${num2}.`)
//     }

//     return answer
// }

// // console.log(subtractTwoThings(2, "asda"))

// //const num1 = prompt("enter a number")
// //const num2 = prompt("enter another number")

// //with try/catch
// try {
// subtractTwoThings(num1, num2)
// } catch(error) {
//     alert(error.message)
// }

//javascript has a error class, can inherit from the error class
// class MyCustomError extends Error {
//     constructor(...params) {
//         super(...params)
//         this.severity = 5
//     }
// }

// try {
//     throw new MyCustomError("something went wrong")
// } catch (e) {
   
//     console.log(e.severity)
// }


//function scope - what you have access to at the place of the program

if (true) {
    var myVar = 2 //var is available in the global scope
   // let myLet = 3 // myLet is not available outside this block scope
}

console.log(myVar)
//console.log(myLet)

// let owner = "M"
// function myDog() {

//     owner = "Joe" //==> cause a side effect
//     //var dog = "Fido"
//     //console.log(owner) //can access owner variable
//     //console.log(dog)
// }

// console.log(owner) // => M
// myDog()
// //console.log(dog) //=> dog is not accessible outsoide the function scope
// console.log(owner) // => Joe


// let book = {
//     title: "Harry Potter"
// }

// function myDog() {
//     book.numpages = 40
// }

// console.log(book)
// myDog()
// console.log(book)

// function parentFunction() {
     
//     let a = 1
//     return function(b) {
//         console.log( a + b)
//     }
// }

// let allFunctions = parentFunction()
// allFunctions(2)

//console.log( parentFunction(2))


//serialization
const user = {
    name: "Mike",
    profession: "Coder",
    isWorking: true,
    age: 26,
    hobbies: ["asdas", "fhghgf"]
}

console.log(JSON.stringify(user))