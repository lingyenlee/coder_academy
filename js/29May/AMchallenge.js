//Core
//1. Create a class called Movie with three fields, title, duration and rating
//2. Add a method to the class called printMovie which should print {title}, {duration} minutes, rated {rating}
//3. Create another field in the class called watchCount and give it an initial value of zero
//4. Now create a method called watch() which, when called, should increment the watchCount
//5. Modify the printMovie method to also print out the number of times the movie was watched.

class Movie {
    constructor(title, duration, rating) {
        this.title = title,
            this.duration = duration,
            this.rating = rating,
            this.watchCount = {}
    }

    getTotalWatchedCount() {
        let total = 0
        for (let email in this.watchCount) {
             total += this.watchCount[email]
            // console.log(total)
        }
        return total
    } 

    printMovie() {
        console.log(`The move ${this.title} is ${this.duration} mins long and rated at ${this.rating} star(s) and
        have been watched ${this.getTotalWatchedCount()} times.`)

       // console.log(this.watchCount)
    }


    watch(user) {

        //if user has watched the movie
        if (this.watchCount[user.email]) {
            this.watchCount[user.email]++
        } else {
            //if user hasn't watched the movie
            this.watchCount[user.email] = 1
        }

    }
}

//Beast Mode
//1. Let's introduce users into the program. Create a User class which takes two fields, email and name .

//2. Now modify the Movie class's watch() method so that it accepts one parameter, 
//user (this should be a user object) 

//3. Since we have users now, modify the watchCount field so that instead of being 
//an integer which counts the number of times the movie has been watched, it keeps 
//track of how many times each particular user has watched it (use email as a unique identifier)

//4. Finally update the printMovie  method, it should still only print out the total number of 
//times the movie has been watched, but you'll need to update the logic to do this since we're 
//now storing the watchCount differently.

class User {
    constructor(email, name) {
        this.email = email,
            this.name = name
    }
}

const movie1 = new Movie("Lords of the ring", 120, 5)
const movie2 = new Movie("Forrest Gump", 120, 5)
const user1 = new User("abc@abc.com", "ABC")
const user2 = new User("xyz@abc.com", "XYZ")
movie2.watch(user1)
movie2.watch(user1)
//movie2.printMovie()
movie2.watch(user2)
// // movie2.watch(user1.email)
// movie2.watch(user2.email)
movie2.printMovie()
//movie2.getTotalWatchedCount()




