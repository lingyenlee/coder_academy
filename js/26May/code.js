// ================example 1======================
// let people = ["Mike", "Joe", "Katie"]

// let firstPerson = people[0]
// let secondPerson = people[1]
// let thirdPerson = people[2]

//deconstruct
// let [firstPerson, secondPerson, thirdPerson] = people

// console.log(firstPerson)
// console.log(secondPerson)
// console.log(thirdPerson)

//==================example 2=========================
// let luckyNums = [4, 8, 15, 16, 23, 42]

// //using spread operators to define the rest of elements that yet destructure
// let [first, second, ...otherNumbers] = luckyNums

// console.log(first)
// console.log(second)
// console.log(otherNumbers)


//======================example 3======================
// let bobBirds = ["robin", "crow"]
// let sallyBirds = ["bluejay", "cardinal"]

// let allBirds = ["Falcon", ...bobBirds, "Bald Eagle", ...sallyBirds]

// //prints out an array because allBirds is an array
// console.log(allBirds)

// //print out string
// console.log(...bobBirds)


//==================example 4 - destructure object================

// let favColors = {
//     sally: "blue",
//     tom: "red",
//     // scott: "purple"
// }


// // rename the sally field, give scott a default value
// let { sally: sallyFavColor, tom, scott= "scotts color" } = favColors

// console.log(sallyFavColor, tom, scott)

// let SallyFavColor = favColors.sally
// let TomFavColor = favColors.tom
// console.log(favColors.sally)


//=====================example 5==========================

// let user = {
//     email: "lee@code.com",
//     name: "Lee",
//     listing: {
//         title: "selling snake"
//     } 
// }

// const { email, name, listing: {title} } = user

// console.log(email)
// console.log(name)
// console.log(title)

//==================example 6=============================
// short circuiting

// let is_true = true

// let name = is_true && "Mike"
// console.log(name)


//=================example 7==============================

//conditional

// 1. if-else

// let age = 20
// if (age > 18) {
//     console.log("You are an adult")
// } else if (age > 12) {
//     console.log("You are a teenager")
// } else {
//     console.log("You are a child")
// }

// //if only 1 line for if statement, can drop curly brackets
// //but only first console log is printed out
// if (age >=18) 
//     console.log("You are an adult")

// 2. ternary operator

// let age = 17
// let allowed = age >=18 ? "come in" : "go away"

// console.log(allowed)

//3. switch statement

// let favBird = "sparrow"

// switch (favBird) {
//     case "crow":
//         console.log("you like crows")
//         break
//     case "Robin":
//         console.log("you like robins")
//         break
//     default:
//         console.log("you like other birds")
// }

//===================example 8============================

//looping

// let count = 10

// while (count < 10) {
//     console.log(count);
//     count++
// }

// let count2 = 10
// do {
//     console.log(count2);
//     count2++
// } while (count2 < 10)

// guessing game
// let favColour = "blue"
// let guess = prompt("What is my fav color?")

// while (guess != favColour) {
//     guess = prompt("What is my fav color?")
// }

// let i = 0
// while (i < 10) {
//     console.log(i)
//     i++
// }

//for loop
// for (let i =0; i<10; i++) {
//     console.log(i)
// }

let people = ["John", "Billy", "Joe"]
let user = {
    email: "john@abc.com",
    password: "secret"
}

// for (let i=0; i < people.length; i++) {
//     console.log(people[i])
// }

// people.map(name => console.log(name))

//for-each loop
//pass in a function to foreach

// function printPerson(person, i) {
// console.log(person, i)
// }
// people.forEach(printPerson)
people.forEach(function (element) { console.log(element) })
people.forEach((e, i) => console.log(e, i))
people.forEach(e => console.log(e))

//for-of loop
// for (let person of people) {
//     console.log(person)
// }

// //for-in-loop
// for (let field in user) {
//     console.log(user[field])
// }

for (let i = 0; i < 10; i++) {
    if (i === 3) {
        // break;
        continue;
    }

    console.log(i)

}

console.log("out of the loop")