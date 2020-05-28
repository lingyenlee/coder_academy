//hositing of var
// var a = 1
// console.log(a, b)
// var b = 2


//hoisting of function
// const answer = sum(2, 2)
// console.log(answer)

// function sum(x,y) {
//     return x + y
// }

// //if function is stored in const/let ==> no hoisting
// let sumSum = function(x,y) {
//     return x + y
// }

//object literal
// let person = {
//     name: "Mike",
//     profession: "Teacher",
//     userInfo: {
//         username: "username",
//         password: "pass"
//     }
// }

// person.age = 26

// const key = "name"

// console.log(person.userInfo)
// //console.log(person[key])
// function getFieldFromObject(obj, field) {
//     return obj[field]
// }

// console.log(getFieldFromObject(person, "profession"))

//constructor functions to create new object
// let myObj = new Object({
//     name: "Mi",
//     age: 22
// })

// //myObj.name = "Me"
// console.log(myObj)

//construction functions to create a class (like in ruby)
//can opass in params or object params ObjParams
// function Book(titleP, authorP){
//     this.title = titleP,
//     this.author = authorP,
//     // this.prettyPrint = () => {
//     //     return `${this.title} written by ${this.author}.`
//     // }
//     this.printThis = function() {console.log(this)}
// }

// //use new keyword to create a new object
// const myBook = new Book("harry", "JK Rowling")
// const myBook2 = new Book("Oliver Twist", "Charles Dickens")
// // myBook.title = "Not harry"

// // console.log(new Book())
// console.log(myBook)
// // console.log(myBook2.prettyPrint())
// //this refers to the whole object
// myBook.printThis()
// myBook2.printThis()

//inheritance
//if we have a name parameter in the parent class, this is not passed
//to the inherited class
// function Chef(name, styleOCooking) {
//     this.name = name
//     this.styleOCooking =  styleOCooking
//     this.numberOfChefsCreated++
//     this.makeChicken = () => {
//         console.log("This chef makes chicken")
//     },
//     this.makeSalad = () => {
//         console.log("This chef makes salad")
//     }
//     this.makeSpecialDish = () => {
//         console.log("This chef makes special dish")
//     }
// }
// //set value in prototype
// Chef.prototype.uniqueValue = "My unique value"
// Chef.prototype.numberOfChefsCreated = 0

// function ItalianChef(name) {

//     //use call to use the super - params in parent class
//     Chef.call(this, name, "Italian")

//     this.makePasta = () => {console.log("The Italian chef makes pasta")}
//     this.makeSpecialDish = () => {console.log("The Italian chef makes special dish")}

// }

// //prototype = superclass
// //explicitly setting the prototype of chef to italian chef
// //can explicit set values on prototype
// ItalianChef.prototype = new Chef

// myChef = new Chef("Gordan")
// myChef2 = new Chef("Rachael")
// myItalianChef = new ItalianChef("Lee")

// //myChef.makePasta()
// myItalianChef.makePasta()

// console.log(myChef)
// //store in the __proto__ 
// // console.log(myItalianChef)

// console.log(myItalianChef)

// console.log(myChef.uniqueValue)
// console.log(myChef2.uniqueValue)

// console.log(myChef)
// console.log(myChef2)

//ES6 class syntax
// class Book {
//     constructor(title, author, genre) {
//         console.log("called")
//         this.title = title
//         this.author = author
//         this.genre = genre

//     }

//     static myStaticFunction() {
//         console.log("My Static function")
//     }

//     prettyPrint() {
//         return `${this.title} written by ${this.author}.`
//     }
// }

// //inheritance with JS class
// class FictionBook extends Book {
//     constructor(title, author) {
//         super(title, author, "Fiction")
//     }

// }
// const myBook = new Book("Harry", "JK")
// console.log(myBook.prettyPrint())

// const myFictionBook = new FictionBook("Oliver", "Charles")
// console.log(myFictionBook)

