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


function topWatchlistedMoviesAmongFriends(id) {

    let userFriends = []
    users.map(user => {
        if (user.userId === id) {
            // console.log(user.friends)
            userFriends = user.friends
        }
    })

    const getMovies = {}

    movies.forEach((movie) => userFriends.forEach((friend) => {
        if (movie.watchlist.includes(friend)) {
            if (!getMovies[movie.title]) {
                getMovies[movie.title] = 1
            } else {
                getMovies[movie.title]++
            }
        }

    }
    ))

    let keys = Object.keys(getMovies)
    keys.sort(function (a, b) {

        if (a < b) {
            return getMovies[a] - getMovies[b]
        }

    })
    console.log(getMovies)
    return keys.reverse().slice(0, 4)

}

console.log(topWatchlistedMoviesAmongFriends(62289))
// ["Schindler's List", "Pulp Fiction", "The Dark Knight", "The Shawshank Redemption"]
console.log(topWatchlistedMoviesAmongFriends(15291))
// ["The Dark Knight", "Schindler's List", "The Shawshank Redemption", "Pulp Fiction"]