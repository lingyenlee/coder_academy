let movies = [
    {
        "title": "The Shawshank Redemption",
        "duration": "PT142M",
        "actors": ["Tim Robbins", "Morgan Freeman", "Bob Gunton"],
        "ratings": [],
        "watchlist": [15291, 51417, 62289, 6146, 71389, 93707]
    },
    {
        "title": "The Godfather",
        "duration": "PT175M",
        "actors": ["Marlon Brando", "Al Pacino", "James Caan"],
        "ratings": [],
        "watchlist": [62289, 66380, 34139, 6146]
    },
    {
        "title": "The Dark Knight",
        "duration": "PT152M",
        "actors": ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
        "ratings": [],
        "watchlist": [51417, 62289, 6146, 71389, 7001]
    },
    {
        "title": "Pulp Fiction",
        "duration": "PT154M",
        "actors": ["John Travolta", "Uma Thurman", "Samuel L. Jackson"],
        "ratings": [],
        "watchlist": [7001, 9250, 34139, 6146]
    },
    {
        "title": "Schindler's List",
        "duration": "PT195M",
        "actors": ["Liam Neeson", "Ralph Fiennes", "Ben Kingsley"],
        "watchlist": [15291, 51417, 7001, 9250, 93707]
    }];

let users = [{
    "userId": 15291,
    "email": "Constantin_Kuhlman15@yahoo.com",
    "friends": [7001, 51417, 62289]
},
{
    "userId": 7001,
    "email": "Keven6@gmail.com",
    "friends": [15291, 51417, 62289, 66380]
},
{
    "userId": 51417,
    "email": "Margaretta82@gmail.com",
    "friends": [15291, 7001, 9250]
},
{
    "userId": 62289,
    "email": "Marquise.Borer@hotmail.com",
    "friends": [15291, 7001]
}];


//find friends of user by user Id
//return an array of users' friends Id
function getUserFriends(userId) {
    let userFriends = []
    users.map(user => {
        if (user.userId === userId) {
            userFriends = user.friends
        }
    })
    return userFriends
}

console.log(getUserFriends(15291))

//get the watchlisted movies of users by user id
//return an array of watchlisted movies
function getWatchlistedMoviesOfUsers(userId) {

    let watchlistedMovies = []

    movies.map(movie => {
        if (movie.watchlist.includes(userId)) {
            watchlistedMovies.push(movie.title)
        }
    })
    return watchlistedMovies
}

console.log(getWatchlistedMoviesOfUsers(15291))

//get the watchlisted movies of users' friend by userid
//return an array with all the watchedlisted movies of users' friends as
function getWatchlistedMoviesOfUsersFriends(userId) {

    let watchlistedMovies = []

    getUserFriends(userId).map(friendId => {
        watchlistedMovies = [...watchlistedMovies, ...getWatchlistedMoviesOfUsers(friendId)]
    })

    return watchlistedMovies
}


//to keep count of movies
//return an object with movie name as keys and counts of watchlisted as values

function watchlistedMoviesObject(arr) {

    let movieCount = {}

    arr.map(movie => {

        if (movieCount[movie]) {
            movieCount[movie]++
        } else {
            movieCount[movie] = 1
        }
    })

    return movieCount

}


function topWatchlistedMoviesAmongFriends(movieObj) {

    //number of movies in the object
    let numMovies = Object.keys(movieObj).length

    let orderedMovies = []

    let count = 1

    while (orderedMovies.length < numMovies) {
        tempArray = []
        for (let movie in movieObj) {
            if (count === movieObj[movie]) {
                tempArray.push(movie)
            }
        }
        orderedMovies = [...tempArray.sort(), ...orderedMovies]
        count++
    }

    return orderedMovies.slice(0, 4)
}


const movieArray = getWatchlistedMoviesOfUsersFriends(15291)
const movieObject = watchlistedMoviesObject(movieArray)
console.log(movieObject)
console.log(topWatchlistedMoviesAmongFriends(movieObject))

// console.log(topWatchlistedMoviesAmongFriends(62289))
// // ["Schindler's List", "Pulp Fiction", "The Dark Knight", "The Shawshank Redemption"]
// console.log(topWatchlistedMoviesAmongFriends(15291))
// ["The Dark Knight", "Schindler's List", "The Shawshank Redemption", "Pulp Fiction"]


// //find user by userid
// function getUserById(userId) {
//     for (let i = 0; i < users.length; i++) {
//         if (users[i].userId === userId)
//             return users[i]
//     }
// }

// //get watchlist movies of user by userid
// function getWatchlistedMoviesOfUser(userId) {
//     let watchlistedMovies = []

//     movies.forEach(movie => {
//         if (movie.watchlist.includes(userId)) {
//             watchlistedMovies.push(movie.title)
//         }
//     })

//     return watchlistedMovies
// }


// function getWatchlistedMoviesOfUsersFriends(userId) {
//     let watchlistedMovies = []
//     getUserById(userId).friends.map(friendId => {
//         watchlistedMovies = [...watchlistedMovies, ...getWatchlistedMoviesOfUser(friendId)]
//     })
//     // getUserById(userId).friends.forEach(friendId => {
//     //     watchlistedMovies = [...watchlistedMovies,...getWatchlistedMoviesOfUser(friendId)]
//     // })

//     return watchlistedMovies
// }

// function generateArrayFrequencyObject(arr) {
//     let frequencies = {}
//     arr.forEach(element => {
//         //check if the movies in the object
//         if (frequencies[element]) {
//             frequencies[element]++
//         } else {
//             frequencies[element] = 1
//         }
//     })
//     return frequencies
// }

// function generateOrderedArrayFromFrequencyObject(freqObj) {
//     //get the number in each key
//     const numItems = Object.keys(freqObj).length

//     let orderedItems = []

//     //loop over the object, look for any movies with a freq of 1, 
//     //sort and put into the ordereditem array
//     //the second look for freq 2, sort and put into the array
//     //the 3rd look for freq of 3...

//     let currentFrequency = 1

//     while (orderedItems.length < numItems) {
//         let tempArray = []
//         //loop over each key in the object
//         for (let movieName in freqObj) {
//             if (currentFrequency === freqObj[movieName]) {
//                 tempArray.push(movieName)
//             }
//         }
//         orderedItems = [...tempArray.sort(), ...orderedItems]
//         currentFrequency++
//     }
//     return orderedItems
// }

// function topWatchlistedMoviesAmongFriends(userId) {
//     const friendsWatchlistedMovies = getWatchlistedMoviesOfUsersFriends(userId)
//     const movieFrequencyObject = generateArrayFrequencyObject(friendsWatchlistedMovies)
//     const sortedMovies = generateOrderedArrayFromFrequencyObject(movieFrequencyObject)
//     return sortedMovies.slice(0, 4)
// }

// // console.log(getUserById(15291))
// // console.log(getWatchlistedMoviesOfUser(15291))
// console.log(getWatchlistedMoviesOfUsersFriends(15291))
// console.log(topWatchlistedMoviesAmongFriends(15291))


// console.log(generateArrayFrequencyObject)