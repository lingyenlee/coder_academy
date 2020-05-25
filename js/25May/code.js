let name //declaring the variable name
name = "Lee" //instantiating with a value
console.log(name)

// let inputName = prompt("What is your name?")
// console.log(inputName)

//Blocks



//data type
console.log("hello".charAt(1))

//array
let myList = ["Mike", 5.5, true, ["One"]]

console.log(myList)

//object
let person = {
    name: "Mike",
    profession: "programmer",
    age: 60,

    hobbies: [
        "coding", "teaching"
    ]
}

console.log(person)
console.log(person.age)
console.log(Object.keys(person))

//undefined and null
let dog; //declared but not given a value
console.log(dog)

let cat = null //given a value of null
console.log(cat)


//function
function addNumbers(num1, num2) {
    console.log(arguments) //arguments keyword is available
    return (num1 + num2) //need explicit return keyword
}
const result = addNumbers(1, 3)
console.log(result)

//storing function

//anonymous function
let addNums = function (num1, num2) {
    console.log(num1 + num2)
}

addNums(2, 3)

//arrow function
let addTwoNums = (num1, num2) => {
    return num1 + num2
}
console.log(addTwoNums(3, 4))

//without curly brackets
let addTwoNumbers = (num1, num2) => num1 + num2
console.log(addTwoNumbers(5, 6))

//pass in function into another function --> Higher Order functions

function executeThePassedInFunction(functionToExecute) {
    console.log("Before we execute function")
    functionToExecute()
    console.log("After we execute function")
}

const myFunc = () => console.log("Hello")

executeThePassedInFunction(myFunc)


function itWillReturnAFunction() {
    const myFunc = () => console.log("Hello")
    return myFunc
}

let theFuncThatGotReturned = itWillReturnAFunction()
console.log(theFuncThatGotReturned())


//Afternoon Challenge
// let user = "Tom"
// let age = 18

// if (user === "Tom") {
//     console.log("Hello Tom")
// } else {
//     console.log("Hello there")
// }

// if (age === 18) {
//     console.log("Welcome to the casino")
// }

// let askUser = prompt("How old are you?")

// if (askUser < 18) {
//     alert("You are not allowed into the casino!")
// }

// let students = []
// students.push("Sarah")

// for (i = 0; i < 3; i++) {
//     let name2 = prompt("What is your name?")
//     students.push(name2)
// }

// for (i = 0; i < students.length; i++) {
//     alert("The student's name is " + students[i])
// }
// console.log(students)

// let students = [
//     {
//         name: "Sarah",
//         age: 18
//     }
// ]

const age = 10

if (age >= 18) {
    console.log("Come in and enjoy a drink!")
} else {
    console.log(`Go away! Come back in ${18 - age} years.`)
}

is_subscriber = true;
is_active = true;

if (is_subscriber && is_active) {
    console.log("You're an active subscriber")
} else if (is_subscriber && !is_active) {
    console.log("Thanks for subscribing, now start using the site")
} else if (!is_subscriber && is_active) {
    console.log("You ise the site a lot, would you like to subscribe?")
} else {
    console.log("Please subscribe and use the site.")
}

function sayHi(name) {
    console.log(`Hi ${name}`)
}

let ask = prompt("What is your name?")
sayHi(ask)