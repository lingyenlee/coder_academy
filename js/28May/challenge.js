// Morning challenge

//1. Assign a new empty object to a variable called me
// let me = {}

// // 2. On the next line, add one key 'age' and set its value to your age
// me.age = 21

// //3. On the next line, add one key 'current location' and set its value to your current location
// me['current location'] = "Australia"

// //4. Use console.log to display the age and current location on screen
// //console.log(me)
// //me.hobbies = ["running"]

// //5.Use code to add an array of hobbies to your me object
// function addItemsToObject(value, key) {

//     if (!me.hasOwnProperty(key)) {
//         me[key] = [key]
//     } 
//    console.log(typeof(key))

//    return me
// }

// console.log(addItemsToObject("Running", "hobbies"))
// console.log(addItemsToObject("Cooking", "hobbies"))
// console.log(typeof(me.hobbies))
// //Use code to delete your age key
// delete me.age
// console.log(me)

//6.Iterate through me.hobbies and log each hobby to the screen
// me.hobbies.map(hobby => console.log(hobby))


//Afternoon challenge

// 1.Create a Dog class. Each dog should have a name and a location.
class Dog {
    constructor(nameP, locationP) {
        this.name = nameP
        this.location = locationP
        this.walks = []
    }

    //2. Add a speak method that logs "Woof! my name is {name}"
    speak = () => console.log(`Woof! My name is ${this.name}.`)

    //3. Add a walk method that accepts two arguments: location (string) and distance (integer)
    //location is just a parameter not stored in the object
    walk(location, distance) {
        console.log(`this.location is ${this.location}`)
        console.log(`location paramter is ${location}`)

        const theWalk = {
            walkLocation: location,
            walkDistance: distance
        }
        this.walks.push(theWalk)
    }

    displayWalks = () => {
        this.walks.forEach(w => console.log(
            `The dog walks ${w.walkLocation} for ${w.walkDistance} km`))
    }

    totalDistance = () => {
     let totalDistance = 0
     this.walks.forEach(walk => totalDistance += walk.walkDistance)
     return totalDistance
    }

}

const myDog = new Dog("Lucky", "Ryde")
myDog.speak()
//console.log(myDog.walk("Rhodes"))
myDog.walk("Milson Park", 2)
myDog.walk("North Sydney", 5)
console.log(myDog)
myDog.displayWalks()
console.log(myDog.totalDistance())

