// promise takes in a function with 2 parameters - resolve or reject
// let myPromise = new Promise(
//     (resolve, reject) => {
//         //async code inside here
//         //when resolve, there is a value 
//         resolve("The promise value")
//         //console.log("In promise")
//         //reject("The error message")
//     }
// )

// //console.log("after promise created")
// console.log(myPromise)

// myPromise
//     //then and catch async 
//     .then((promiseValue) => {console.log(promiseValue)})
//     .catch((error) => console.log(error))

// //print after then and catch


//return promise in a function

// function adderWithPromise(num1, num2) {
//     return new Promise(
//         (resolve, reject) => {
//             //long winded async code eg API call
//             resolve(num1+ num2)
//             //reject(num1 + num2)
//         })
// }
// console.log(adderWithPromise(2, 5))


// adderWithPromise(2, 5)
//     .then(sum => {return sum + 60}) 
//     .then(valueFromPreviousThen => {
//            return valueFromPreviousThen+ 100
//         })
//     .then(valueFromPreviousThen => {
//         console.log(valueFromPreviousThen)
//     })
//     .catch( error => console.log("e"))

// //promise with ajax call
// function makeGetRequest(url) {
//     return new Promise(
//         (resolve, reject) => {
//             const request = new XMLHttpRequest();
//             request.open("GET", url, true);
//             request.onload = (res) => resolve(res.currentTarget.responseText)
//             //request.onload = resolve
//             request.onerror = reject
//             request.send();
//         }
//     )
// }


// function getPokemon(pokemonName) {
//     return new Promise(
//         (resolve, reject) => {
//             makeGetRequest(`https://pokeapi.co/api/v2/pokemon/${pokemonName}`)
//                 .then(rawPokemonData => {
//                     const myPokemon = JSON.parse(rawPokemonData)
//                     resolve(myPokemon)
//                 })
//                 .catch(e => console.log(e))
//         }
//     )
// }

// const favPokemon = [
//     getPokemon('charmander'),
//     getPokemon('squirtle'),
//     getPokemon('pikachu')
// ]

// Promise.all(favPokemon)
// .then(results => console.log(results))

// Promise.race(favPokemon)
// .then(results => console.log(results))

// function setTimeoutPromise(ms) {

//     return new Promise(
//         (resolve, reject) => { setTimeout(resolve, ms) })
// }

// setTimeoutPromise(3000)
//     .then(() => console.log("times up"))

//fetch API

// fetch("https://api.chucknorris.io/jokes/random")
//     .then(response => response.json())
//     .then(joke => console.log(joke.value))

//using fetch to make POST request
// fetch("https://api.chucknorris.io/jokes/random", {
//     method: "POST",
//     header: {
//         "Content-Type": "applicaiton/json"
//     },
//     body: JSON.stringify({

//     })
// })


async function run() {
    const res = await axios.get("https://api.chucknorris.io/jokes/random")
    console.log(res.data.value)
}

run()
console.log("after run func")